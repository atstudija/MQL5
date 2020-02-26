//+------------------------------------------------------------------+
//|                                                         Days.mq5 |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."
#property link      "https://www.atstudija.id.lv"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+

#include <AA_Days/Indics/Indics.mqh>
#include <AT/Trade/AT_Positions.mqh>
bool buyPosition = false;
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
//--
    // #include <AA_Days/Days/17.02.mqh>
    int ma_slow = 10, ma_fast = 5;
    Comment(DoubleToString(NormalizeDouble(_Point,_Digits)));
    if((TEMA(ma_fast, 2) < TEMA(ma_slow, 2)) && ((TEMA(ma_fast, 1) > TEMA(ma_slow, 1)))){
      if(buyPosition == false){
         OpenBuyPosition();
         buyPosition = true;
      }
    }
    if((TEMA(ma_fast, 2) > TEMA(ma_slow, 2)) && ((TEMA(ma_fast, 1) < TEMA(ma_slow, 1)))){
      if(buyPosition == true){
         CloseAllPositions();
         buyPosition = false;
      }
    }

  }                                      
//+------------------------------------------------------------------+
