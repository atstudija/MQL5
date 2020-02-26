//+------------------------------------------------------------------+
//|                                                       FFUUFF.mq5 |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."
#property link      "https://www.atstudija.id.lv"
#property version   "1.00"
#include <AA/Indicators/C_Stochastic.mqh>
#include <AA/Crosses/C_LWMA5_X_SMA10.mqh>
#include <AA/G/C_Labels.mqh>
#include <AA/G/C_Arrows.mqh>
#include <AA/Strategy/Cross.mqh>
#include <AT/lib_cisnewbar.mqh>
#include <Trade\Trade.mqh>
#include <AT/Trade/AT_Positions.mqh>
//CTrade trade;


CisNewBar NewBar;
// C_LWMA5_X_SMA10 lwma_5_x_sma_10;
C_Labels label;
// C_Stochastic stocastics;
C_Arrows arrow;
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
bool isBuy = false;

void OnTick()
  {
 // label.Create("text");
//---
 //    double stocastic[];
 //    double signal[];
 //    stocastics.Buffers(stocastic, signal);
    // label.Create(stocastic[0]);
//    int a = lwma_5_x_sma_10.cross();
 //   if(a == 1){
//         arrow.BuyArrow();
//    }
 //   if(a == -1){
//          arrow.SellArrow();
 //   }
    //arrow.Create(242);
    Comment("CROSS: ", LWMA5XSMA10(),"\n",
                   "STOCK: ", STOCH(),"\n",
                   "RSI: ",NormalizeDouble(RSI(),_Digits),"\n",
                   "MACD_M: ",NormalizeDouble(MACD_M(),6),"\n",
                   "MACD_S: ",NormalizeDouble(MACD_S(),6),"\n",
                   "ATR: ", NormalizeDouble(ATR(),6),"\n"
    );
    //if(NewBar.isNewBar()){                         
         int cross = LWMA5XSMA10();
         if(!isBuy ){
              if(cross == 1){                                                                  
                  //  CloseAllPositions();
                   if(STOCH() > 0){
                    if(RSI() > 60){
                         if(MACD_M() > MACD_S()){
                         //    if(ATR() > 0.00030){
                                   OpenBuyPosition();
                                   isBuy = true;
                          //   }
                          }
                     }      
                   }

              }
         }
         if(cross == -1){
               CloseAllPositions();
               isBuy = false;
              // OpenSellPosition();
                                                         
         }
    
   // }
    
    
  }
//+------------------------------------------------------------------+
