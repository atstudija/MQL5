//+------------------------------------------------------------------+
//|                                                   C_ICHIMOKU.mqh |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."
#property link      "https://www.atstudija.id.lv"
#property version   "1.00"

enum LINE_ICHIMOKU{
   LINE_TENKANSEN,
   LINE_KIJUNSEN,
   LINE_SENKOUSPANA,
   LINE_SENKOUSPANB,
   LINE_CHIKOUSPAN
};

class C_ICHIMOKU
  {
private:
   int m_tenkan_sen;
   int m_kijun_sen;  
   int m_senkou_span_b;
   string m_symbol;
   ENUM_TIMEFRAMES m_period;
public:
   C_ICHIMOKU(int tenkan_sen = 9, int kijun_sen = 26, int senkou_span_b = 52, string symbol = NULL, ENUM_TIMEFRAMES period = PERIOD_CURRENT)
   {
      if(symbol == NULL) {m_symbol = _Symbol;}
      m_period = period;
      m_tenkan_sen = tenkan_sen;
      m_kijun_sen = kijun_sen;
      m_senkou_span_b = senkou_span_b;
   }
   ~C_ICHIMOKU()
   {
   }
    
  double Buff(LINE_ICHIMOKU line = LINE_TENKANSEN, int index = 0)
   {
      double buff[]; 
      ArraySetAsSeries(buff, true);
      CopyBuffer(iIchimoku(m_symbol,m_period, m_tenkan_sen, m_kijun_sen, m_senkou_span_b), line, 0, 100, buff);
      return(buff[index]);
   }
   double TENKANSEN(int ind = 0)
   {
      double buff[]; 
      ArraySetAsSeries(buff, true);
      CopyBuffer(iIchimoku(m_symbol,m_period, m_tenkan_sen, m_kijun_sen, m_senkou_span_b), LINE_TENKANSEN, 0, 100, buff);
      return(buff[ind]);
   }
   double KIJUNSEN(int ind = 0)
   {
      double buff[]; 
      ArraySetAsSeries(buff, true);
      CopyBuffer(iIchimoku(m_symbol,m_period, m_tenkan_sen, m_kijun_sen, m_senkou_span_b), LINE_KIJUNSEN, 0, 100, buff);
      return(buff[ind]);
   }
   double SENKOUSPANA(int ind = 0)
   {
      double buff[]; 
      ArraySetAsSeries(buff, true);
      CopyBuffer(iIchimoku(m_symbol,m_period, m_tenkan_sen, m_kijun_sen, m_senkou_span_b), LINE_SENKOUSPANA, 0, 100, buff);
      return(buff[ind]);
   }
   double SENKOUSPANB(int ind = 0)
   {
      double buff[]; 
      ArraySetAsSeries(buff, true);
      CopyBuffer(iIchimoku(m_symbol,m_period, m_tenkan_sen, m_kijun_sen, m_senkou_span_b), LINE_SENKOUSPANB, 0, 100, buff);
      return(buff[ind]);
   }
   double CHIKOUSPAN(int ind = 0)
   {
      double buff[]; 
      ArraySetAsSeries(buff, true);
      CopyBuffer(iIchimoku(m_symbol,m_period, m_tenkan_sen, m_kijun_sen, m_senkou_span_b), LINE_CHIKOUSPAN, 0, 100, buff);
      return(buff[ind]);
   }
   
   int T_K_Cross()
   {
      int ret = 0;
      if((this.TENKANSEN(1)>this.KIJUNSEN(1)) && (this.TENKANSEN(0)<this.KIJUNSEN(0))){
         ret = 1;
      }
      if((this.TENKANSEN(1)<this.KIJUNSEN(1)) && (this.TENKANSEN(0)>this.KIJUNSEN(0))){
         ret = -1;
      }
      return(ret);
   }
   
   
   int buffer(LINE_ICHIMOKU line)
   {
      return(line);
   }
                   
  };

