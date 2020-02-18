//+------------------------------------------------------------------+
//|                                                 C_Stochastic.mqh |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."
#property link      "https://www.atstudija.id.lv"
#property version   "1.00"
class C_Stochastic
  {
private:
     string m_symbol;
     ENUM_TIMEFRAMES m_period;
     int m_buffer_size;
public:
                     C_Stochastic(ENUM_TIMEFRAMES period, string symbol);;
                    ~C_Stochastic();
                    
                    void Buffers(double& StochasticBuffer[], double& SignalBuffer[], int Kperiod = 5, int Dperiod = 3, int slowing = 3, ENUM_MA_METHOD ma_method = MODE_SMA, ENUM_STO_PRICE   price_field = STO_LOWHIGH);
                    int Result();
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
C_Stochastic::C_Stochastic(ENUM_TIMEFRAMES period = PERIOD_CURRENT, string symbol = NULL)
  {
          if(symbol == NULL) {m_symbol = _Symbol;}
          m_buffer_size = 100;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
C_Stochastic::~C_Stochastic()
  {
  }
//+------------------------------------------------------------------+
void C_Stochastic::Buffers(double& StochasticBuffer[], double& SignalBuffer[], int Kperiod = 5, int Dperiod = 3, int slowing = 3, ENUM_MA_METHOD ma_method = MODE_SMA, ENUM_STO_PRICE   price_field = STO_LOWHIGH){
     ArraySetAsSeries(StochasticBuffer, true);
     CopyBuffer(iStochastic(m_symbol, m_period, Kperiod, Dperiod, slowing, MODE_SMA,STO_LOWHIGH), 0, 0, m_buffer_size, StochasticBuffer);
     ArraySetAsSeries(SignalBuffer, true);
     CopyBuffer(iStochastic(m_symbol, m_period, Kperiod, Dperiod, slowing, MODE_SMA, STO_LOWHIGH), 1, 0, m_buffer_size, SignalBuffer);
     Comment(StochasticBuffer[0], " - ", SignalBuffer[0]);

}

int C_Stochastic::Result(){
     return(0);
}