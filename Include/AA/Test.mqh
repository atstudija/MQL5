//+------------------------------------------------------------------+
//|                                                         Test.mqh |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."
#property link      "https://www.atstudija.id.lv"

string current_symbol = Symbol();
int Test(int ma_period = 13, 
            ENUM_MA_METHOD mode = MODE_EMA, 
            ENUM_APPLIED_PRICE price = PRICE_CLOSE, 
            string symbol = NULL,
            ENUM_TIMEFRAMES period = PERIOD_CURRENT){
     if(symbol == NULL) {
         symbol = _Symbol;
     }
      double MA13[];ArraySetAsSeries(MA13,true);
      CopyBuffer(iMA(symbol,_Period,ma_period,0,mode,price),0,0,100,MA13);
      int ret = NULL;
      if(MA13[2] == MA13[1]){
         ret = 0;
      }
      if(MA13[2] < MA13[1]){
         ret = 1;
      }
      if(MA13[2] > MA13[1]){
         ret = -1;
      }
      return ret;
}
