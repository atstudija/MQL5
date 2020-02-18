//+------------------------------------------------------------------+
//|                                                         C_MA.mqh |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."
#property link      "https://www.atstudija.id.lv"
#property version   "1.00"

enum AA_ENUM_APPLIED_PRICE
     {
          C = PRICE_CLOSE,
          O =  PRICE_OPEN,
          H =  PRICE_HIGH,
          L = PRICE_LOW,
          M = PRICE_MEDIAN,
          T = PRICE_TYPICAL,
          W = PRICE_WEIGHTED
     };
enum AA_ENUM_MA_METOD
     {
          S = MODE_SMA,
          E = MODE_EMA,
          SM = MODE_SMMA,
          LW = MODE_LWMA
     };
class C_MA
  {
private:
     string m_symbol;
     ENUM_TIMEFRAMES m_period;
     int m_buffer_size;
     
public:
     C_MA(ENUM_TIMEFRAMES period, string symbol);
     ~C_MA();

     void SMA (double& MA[], int ma_period = 10, AA_ENUM_APPLIED_PRICE ma_applied_price = C, int ma_shift = 0);
     int SMA_DIFF(int ma_period = 10, AA_ENUM_APPLIED_PRICE ma_applied_price = C, int ma_shift = 0);
     
     void EMA (double& MA[], int ma_period = 10, AA_ENUM_APPLIED_PRICE ma_applied_price = C, int ma_shift = 0);
     int EMA_DIFF(int ma_period = 10, AA_ENUM_APPLIED_PRICE ma_applied_price = C, int ma_shift = 0); 
    
     void SMMA (double& MA[], int ma_period = 10, AA_ENUM_APPLIED_PRICE ma_applied_price = C, int ma_shift = 0);
     int SMMA_DIFF(int ma_period = 10, AA_ENUM_APPLIED_PRICE ma_applied_price = C, int ma_shift = 0);  
     
     void LWMA (double& MA[], int ma_period = 10, AA_ENUM_APPLIED_PRICE ma_applied_price = C, int ma_shift = 0);
     int LWMA_DIFF(int ma_period = 10, AA_ENUM_APPLIED_PRICE ma_applied_price = C, int ma_shift = 0);                
   };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
C_MA::C_MA(ENUM_TIMEFRAMES period = PERIOD_CURRENT, string symbol = NULL)
     {
          if(symbol == NULL) {m_symbol = _Symbol;}
          m_buffer_size = 100;
     };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
C_MA::~C_MA()
     {
     }
//+------------------------------------------------------------------+
void C_MA::SMA (double& MA[], int ma_period = 10, AA_ENUM_APPLIED_PRICE ma_applied_price = C, int ma_shift = 0)
     {
          ArraySetAsSeries(MA, true);
          CopyBuffer(iMA(m_symbol,m_period, ma_period, ma_shift, MODE_SMA, ma_applied_price), 0, 0, m_buffer_size, MA);
     }
     
int C_MA::SMA_DIFF(int ma_period=10,AA_ENUM_APPLIED_PRICE ma_applied_price=1,int ma_shift=0)
     {
          int ret = 0;
          double MA[];
          ArraySetAsSeries(MA, true);
          CopyBuffer(iMA(m_symbol, m_period, ma_period, ma_shift, MODE_SMA, ma_applied_price), 0, 0, m_buffer_size, MA);
          if(MA[2] == MA[1]){
               ret = 0;
          }
          if(MA[2] > MA[1]){
               ret = -1;
          }
          if(MA[2] < MA[1]){
               ret = 1;
          }
          return (ret);
          
     }   
void C_MA::EMA (double& MA[], int ma_period = 10, AA_ENUM_APPLIED_PRICE ma_applied_price = C, int ma_shift = 0)
     {
          ArraySetAsSeries(MA, true);
          CopyBuffer(iMA(m_symbol,m_period, ma_period, ma_shift, MODE_EMA, ma_applied_price), 0, 0, m_buffer_size, MA);
     }  
int C_MA::EMA_DIFF(int ma_period=10,AA_ENUM_APPLIED_PRICE ma_applied_price = C,int ma_shift = 0)
     {
          int ret = 0;
          double MA[];
          ArraySetAsSeries(MA, true);
          CopyBuffer(iMA(m_symbol, m_period, ma_period, ma_shift, MODE_EMA, ma_applied_price), 0, 0, m_buffer_size, MA);
          if(MA[2] == MA[1]){
               ret = 0;
          }
          if(MA[2] > MA[1]){
               ret = -1;
          }
          if(MA[2] < MA[1]){
               ret = 1;
          }
          return (ret);
          
     }   
void C_MA::SMMA (double& MA[], int ma_period = 10, AA_ENUM_APPLIED_PRICE ma_applied_price = C, int ma_shift = 0)
     {
          ArraySetAsSeries(MA, true);
          CopyBuffer(iMA(m_symbol,m_period, ma_period, ma_shift, MODE_SMMA, ma_applied_price), 0, 0, m_buffer_size, MA);
     }  
int C_MA::SMMA_DIFF(int ma_period=10,AA_ENUM_APPLIED_PRICE ma_applied_price = C,int ma_shift = 0)
     {
          int ret = 0;
          double MA[];
          ArraySetAsSeries(MA, true);
          CopyBuffer(iMA(m_symbol, m_period, ma_period, ma_shift, MODE_SMMA, ma_applied_price), 0, 0, m_buffer_size, MA);
          if(MA[2] == MA[1]){
               ret = 0;
          }
          if(MA[2] > MA[1]){
               ret = -1;
          }
          if(MA[2] < MA[1]){
               ret = 1;
          }
          return (ret);
          
     }    
void C_MA::LWMA (double& MA[], int ma_period = 10, AA_ENUM_APPLIED_PRICE ma_applied_price = C, int ma_shift = 0)
     {
          ArraySetAsSeries(MA, true);
          CopyBuffer(iMA(m_symbol,m_period, ma_period, ma_shift, MODE_LWMA, ma_applied_price), 0, 0, m_buffer_size, MA);
     }  
int C_MA::LWMA_DIFF(int ma_period=10,AA_ENUM_APPLIED_PRICE ma_applied_price = C,int ma_shift = 0)
     {
          int ret = 0;
          double MA[];
          ArraySetAsSeries(MA, true);
          CopyBuffer(iMA(m_symbol, m_period, ma_period, ma_shift, MODE_LWMA, ma_applied_price), 0, 0, m_buffer_size, MA);
          if(MA[2] == MA[1]){
               ret = 0;
          }
          if(MA[2] > MA[1]){
               ret = -1;
          }
          if(MA[2] < MA[1]){
               ret = 1;
          }
          return (ret);
          
     }                          