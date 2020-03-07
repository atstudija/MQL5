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
#include <AA/G/C_Arrows.mqh>
#include <AA_Days/Indics/C_ICHIMOKU.mqh>
bool buyPosition = false;
C_ICHIMOKU ich;
C_ICHIMOKU ich1(120,240,480);
C_Arrows arrow;
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
  Comment( "TENKANSEN: ", ich.TENKANSEN(),"\n",
           "TENKANSEN: ", ich.TENKANSEN(1),"\n",
           "KIJUNSEN: ", ich.KIJUNSEN(),"\n",
           "SENKOUSPANA: ", ich.SENKOUSPANA(),"\n",
           "SENKOUSPANB: ", ich.SENKOUSPANB(),"\n",
           "CHIKOUSPAN: ", ich.CHIKOUSPAN(),"\n",
           "Cross: ", ich.T_K_Cross()
           );
           
   if(ich1.KIJUNSEN())
   {}
  if(ich.T_K_Cross()<0){
      OpenBuyPosition();
    //  arrow.BuyArrow();
      
  }
  if(ich.T_K_Cross()>0){
      CloseAllPositions();
   //   OpenSellPosition();
    //  arrow.SellArrow();
  }
//--
    // #include <AA_Days/Days/17.02.mqh>
 //   int ma_slow = 10, ma_fast = 5;
 //   Comment(DoubleToString(NormalizeDouble(_Point,_Digits)));
  //  if((TEMA(ma_fast, 2) < TEMA(ma_slow, 2)) && ((TEMA(ma_fast, 1) > TEMA(ma_slow, 1)))){
 //     if(buyPosition == false){
 //        OpenBuyPosition();
 //        buyPosition = true;
//      }
 //   }
  //  if((TEMA(ma_fast, 2) > TEMA(ma_slow, 2)) && ((TEMA(ma_fast, 1) < TEMA(ma_slow, 1)))){
 //     if(buyPosition == true){
  //       CloseAllPositions();
 //        buyPosition = false;
 //     }
 //   }

  }                                      
//+------------------------------------------------------------------+
