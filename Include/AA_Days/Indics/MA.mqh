//+------------------------------------------------------------------+
//|                                                           MA.mqh |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."
#property link      "https://www.atstudija.id.lv"
enum AA_PRICE
  {
   P_C=PRICE_CLOSE,
   P_O=PRICE_OPEN,
   P_H=PRICE_HIGH,
   P_L=PRICE_LOW,
   P_M=PRICE_MEDIAN,   //(high + low)/2
   P_T=PRICE_TYPICAL,  //(high + low + close)/3
   P_W=PRICE_WEIGHTED  //(high + low + close + close)/4
  };
double SMA(int ma_period, int ma_ref=0, AA_PRICE ma_price=P_C){
   double SMA[];
   ArraySetAsSeries(SMA, true);
   CopyBuffer(iMA(_Symbol,_Period, ma_period, 0, MODE_SMA, ma_price), 0, ma_ref , 1, SMA);
   return(SMA[0]);
}

double TEMA(int ma_period, int ma_ref=0, AA_PRICE ma_price=P_C){
   double TEMA[];
   ArraySetAsSeries(TEMA, true);
   CopyBuffer(iTEMA(_Symbol,_Period, ma_period, 0, ma_price), 0, ma_ref , 1, TEMA);
   return(TEMA[0]);
}