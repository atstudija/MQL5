//+------------------------------------------------------------------+
//|                                                     Ichimoku.mq5 |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."
#property link      "https://www.atstudija.id.lv"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+

#include <AA_Ichimoku/Indics/Ichimoku.mqh>
#include <AT/lib_cisnewbar.mqh>
#include <Trade\Trade.mqh>
#include <AT/Trade/AT_Positions.mqh>

int OnInit()
  {
//---
   
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
      Comment("CROSS_0: ",ICHICLOUDCROSS(0),"\n",
              "CROSS_1: ",ICHICLOUDCROSS(1),"\n",
              "SEUKOSPAN_A: ",SEUKOSPAN_A(1),"\n",
              "SEUKOSPAN_B: ",SEUKOSPAN_B(1),"\n",
              "CLOSE: ",CLOSE(1),"\n" 
               );
                                                             


  }
//+------------------------MT5|Indicator!Moving Average------------------------------------------+
