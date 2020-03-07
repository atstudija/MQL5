//+------------------------------------------------------------------+
//|                                                     ICHIMOKU.mqh |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."
#property link      "https://www.atstudija.id.lv"

int  iIchimoku(
   string           symbol,            // symbol name
   ENUM_TIMEFRAMES  period,            // period
   int              tenkan_sen,        // period of Tenkan-sen
   int              kijun_sen,         // period of Kijun-sen
   int              senkou_span_b      // period of Senkou Span B
   );
   
   //The buffer numbers: 0 - TENKANSEN_LINE, 1 - KIJUNSEN_LINE, 2 - SENKOUSPANA_LINE, 3 - SENKOUSPANB_LINE, 4 - CHIKOUSPAN_LINE.
enum LINE_ICHIMOKU{
   LINE_TENKANSEN,
   LINE_KIJUNSEN,
   LINE_SENKOUSPANA,
   LINE_SENKOUSPANB,
   LINE_CHIKOUSPAN
}

double ICHIMOKU(LINE_ICHIMOKU buff)
input Creation             type=Call_iIchimoku;       // type of the function 
input int                  tenkan_sen=9;              // period of Tenkan-sen
input int                  kijun_sen=26;              // period of Kijun-sen
input int                  senkou_span_b=52;          // period of Senkou Span B
input string               symbol=" ";                // symbol 
input ENUM_TIMEFRAMES      period=PERIOD_CURRENT;     // timeframe
//--- indicator buffer
double         Tenkan_sen_Buffer[];
double         Kijun_sen_Buffer[];
double         Senkou_Span_A_Buffer[];
double         Senkou_Span_B_Buffer[];
double         Chinkou_Span_Buffer[];
Class C_ICHIMOKU{
   int tenkan_sen=9;              // period of Tenkan-sen
   int kijun_sen=26;              // period of Kijun-sen
   int senkou_span_b=52;          // period of Senkou Span B 




}