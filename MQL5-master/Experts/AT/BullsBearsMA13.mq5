//+------------------------------------------------------------------+
//|                                               BullsBearsMA13.mq5 |
//|                                    Copyright 2020, ATStudija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, ATStudija IK."
#property link      "https://www.atstudija.id.lv"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+

#include <AT/Trade/AT_PositionsRetTicket.mqh>
#include <AT/Trade/AT_Arrows.mqh>
#include <AT/lib_cisnewbar.mqh>
#include<Trade\Trade.mqh>
CTrade trade;


CisNewBar NewBar;
ulong B1,S1,B2,S2;
double volume = 0.01, sl = 40, tp = 40;
int buyTicket = 0, sellTicket = 0;

int OnInit()
  {
//---
   #include <AT/DeInit/IndDeinit.mqh>
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
      double MA13[];ArraySetAsSeries(MA13,true);
      CopyBuffer(iMA(_Symbol,_Period,13,0,MODE_EMA,PRICE_CLOSE),0,0,100,MA13);
      
      double BULLS[];ArraySetAsSeries(BULLS,true);
      CopyBuffer(iBullsPower(_Symbol,_Period,13),0,0,100,BULLS);
   
      double BEARS[];ArraySetAsSeries(BEARS,true);
      CopyBuffer(iBearsPower(_Symbol,_Period,13),0,0,100,BEARS);
      
      
  }
//+------------------------------------------------------------------+
