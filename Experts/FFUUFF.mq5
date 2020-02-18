//+------------------------------------------------------------------+
//|                                                       FFUUFF.mq5 |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."
#property link      "https://www.atstudija.id.lv"
#property version   "1.00"
#include <AA/Indicators/C_Stochastic.mqh>
#include <AA/G/C_Labels.mqh>
C_Labels label;
C_Stochastic stocastics;
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
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
 // label.Create("text");
//---
     double stocastic[];
     double signal[];
     stocastics.Buffers(stocastic, signal);
     label.Create(stocastic[0]);
  }
//+------------------------------------------------------------------+
