//+------------------------------------------------------------------+
//|                                                       AT_STC.mq5 |
//|                                   Copyright 2019, AT Studija IK. |
//|                                                      https://www |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, AT Studija IK."
#property link      "https://www"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
#include <AT/AT_Positions.mqh>
//#include <AT/AT_Arrows.mqh>
#include <AT/lib_cisnewbar.mqh>
#include <Indicators\Trend.mqh>
input int Period_S = 3;
input int Period_L = 5;
input int Perioda = 80;
int STC_Handle;
double STC[];


//int MA100_handle;
//double MA100[];


//int Handle = iMA(_Symbol,_Period,10, 0, MODE_SMA, PRICE_CLOSE);
//  ChartIndicatorAdd(ChartID(),1,Handle);
//double MA[];
//ArraySetAsSeries(MA,true);
//CopyBuffer(Handle,0,0,10,MA);

double CLOSE[];
CisNewBar NewBar;
int OnInit()
  {
//---
 //  STC_Handle = iCustom(_Symbol,_Period,"STC\\SchaffTrendCycle.ex5",23,50,10,false);
 //  ChartIndicatorAdd(ChartID(),1,STC_Handle);
//   MA100_handle = iMA(_Symbol,_Period,Perioda, 0, MODE_SMA, PRICE_CLOSE);
  // ChartIndicatorAdd(ChartID(),0,MA100_handle);
//---

//int Handle = iMA(_Symbol,_Period,10, 0, MODE_SMA, PRICE_CLOSE);
  ChartIndicatorAdd(ChartID(),0,iMA(_Symbol,_Period,Period_S, 0, MODE_SMA, PRICE_CLOSE));
  ChartIndicatorAdd(ChartID(),0,iMA(_Symbol,_Period,Period_L, 0, MODE_SMA, PRICE_CLOSE));
  ChartIndicatorAdd(ChartID(),0,iMA(_Symbol,_Period,Perioda, 0, MODE_SMA, PRICE_CLOSE));
  ChartIndicatorAdd(ChartID(),1,iAC(_Symbol,_Period));
  ChartIndicatorAdd(ChartID(),2,iAO(_Symbol,_Period));
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
      int subwindows=ChartGetInteger(0,CHART_WINDOWS_TOTAL);

      for(int i=subwindows;i>=0;i--)
        {
         int indicators=ChartIndicatorsTotal(0,i);

         for(int j=indicators-1; j>=0; j--)
           {
            ChartIndicatorDelete(0,i,ChartIndicatorName(0,i,j));
           }
        }
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+






MqlRates Rates[];
void OnTick()
  {
//---
//int Handle = iMA(_Symbol,_Period,10, 0, MODE_SMA, PRICE_CLOSE);
  
double MA3[];ArraySetAsSeries(MA3,true);
CopyBuffer(iMA(_Symbol,_Period,Period_S, 0, MODE_SMA, PRICE_CLOSE),0,0,100,MA3);

double MA5[];ArraySetAsSeries(MA5,true);
CopyBuffer(iMA(_Symbol,_Period,Period_L, 0, MODE_SMA, PRICE_CLOSE),0,0,100,MA5);

double MA100[];ArraySetAsSeries(MA100,true);
CopyBuffer(iMA(_Symbol,_Period,Perioda, 0, MODE_SMA, PRICE_CLOSE),0,0,Perioda,MA100);

double AC[];ArraySetAsSeries(AC,true);
CopyBuffer(iAC(_Symbol,_Period),0,0,100,AC);

double AO[];ArraySetAsSeries(AO,true);
CopyBuffer(iAO(_Symbol,_Period),0,0,100,AO);
Comment("-");
Comment("AC: ",DoubleToString(NormalizeDouble(AC[0],8)),"\nAO: ",DoubleToString(NormalizeDouble(AO[0],8)));
ArraySetAsSeries(Rates,true);
CopyRates(_Symbol,_Period,0,10,Rates);

if(NewBar.isNewBar()){
   if((MA100[1] <  MA3[1])&&(MA3[1] > MA5[1])){
      if(AC[0] > 0){
         BuyArrow();
         if(PositionsTotal()==0){
            OpenBuyPosition();
         }
      }
      if(AC[0] < 0){
         BuyStopArrow();
         CloseAllPositions();
      }
   }
   if((MA100[1] >  MA3[1])&&(MA3[1] < MA5[1])){
      if(AC[0] < 0){
         SellArrow();
         if(PositionsTotal()==0){
            OpenSellPosition();
         }
      }
      if(AC[0] > 0){
         SellStopArrow();
         CloseAllPositions();
      }
   }
}
/*
BuyArrow();
   SellArrow();


if(NewBar.isNewBar()){
   if(MA100[1] < MA3[1]){
      if(MA3[1] > MA5[1] && MA3[2] <= MA5[2]){
         if(PositionsTotal()==0){
            OpenBuyPosition();
         } 
      }
      if(MA3[1] < MA5[1] && MA3[2] >= MA5[2]){
         if(PositionsTotal()>0){
            CloseAllPositions();
         } 
      }
   }
   if(MA100[0] > MA3[0]){
      if(MA3[0] < MA5[0] && MA3[1] >= MA5[1]){
         if(PositionsTotal()==0){
            OpenSellPosition();
         } 
      }
      if(MA3[0] > MA5[0] && MA3[1] <= MA5[1]){
         if(PositionsTotal()>0){
            CloseAllPositions();
         } 
      }
   }
}








Comment("MA :",MA10[0]);

      CopyBuffer(STC_Handle,0,0,100,STC);
      CopyBuffer(MA100_handle,0,0,100,MA100);
      CopyClose(_Symbol,_Period,0,100,CLOSE);
      ArraySetAsSeries(STC,true);
      ArraySetAsSeries(MA100,true);
      ArraySetAsSeries(CLOSE,true);
      if(NewBar.isNewBar()){
         if(MA100[0] < CLOSE[0]){
            if((STC[0] > 25) && (STC[1] <= 25)){
               if(PositionsTotal()==0){
                  OpenBuyPosition();
               }   
            }
            if((STC[0] < 75) && (STC[1] >= 75)){
               if(PositionsTotal()>0){
                  CloseAllPositions();
               }   
            }
         }
         if(MA100[0] > CLOSE[0]){
            if((STC[0] < 75) && (STC[1] >= 75)){
               if(PositionsTotal()==0){
                  OpenSellPosition();
               }
            }
            if((STC[0] > 25) && (STC[1] <= 25)){
               if(PositionsTotal()>0){
                  CloseAllPositions();
               }
            }
         }
      }
*/

  }
//+------------------------------------------------------------------+
void BuyArrow(){
   string name = "ST_up_" + TimeToString(Rates[0].time);

	ObjectCreate(0, name, OBJ_ARROW, 0, Rates[0].time, Rates[0].low - (3 * _Point));
	ObjectSetInteger(0, name, OBJPROP_ARROWCODE, 233);
	ObjectSetInteger(0, name, OBJPROP_COLOR, clrBlue);
	ObjectSetInteger(0, name, OBJPROP_SELECTABLE, false);
}

void SellArrow(){
   string name = "ST_down_" + TimeToString(Rates[0].time);

	ObjectCreate(0, name, OBJ_ARROW, 0, Rates[0].time, Rates[0].high + (5 * _Point));
	ObjectSetInteger(0, name, OBJPROP_ARROWCODE, 234);
	ObjectSetInteger(0, name, OBJPROP_COLOR, clrRed);
	ObjectSetInteger(0, name, OBJPROP_SELECTABLE, false);
}

void BuyStopArrow(){
   string name = "ST_up_" + TimeToString(Rates[0].time);

	ObjectCreate(0, name, OBJ_ARROW, 0, Rates[0].time, Rates[0].low - (3 * _Point));
	ObjectSetInteger(0, name, OBJPROP_ARROWCODE, 251);
	ObjectSetInteger(0, name, OBJPROP_COLOR, clrBlue);
	ObjectSetInteger(0, name, OBJPROP_SELECTABLE, false);
}

void SellStopArrow(){
   string name = "ST_down_" + TimeToString(Rates[0].time);

	ObjectCreate(0, name, OBJ_ARROW, 0, Rates[0].time, Rates[0].high + (5 * _Point));
	ObjectSetInteger(0, name, OBJPROP_ARROWCODE, 251);
	ObjectSetInteger(0, name, OBJPROP_COLOR, clrRed);
	ObjectSetInteger(0, name, OBJPROP_SELECTABLE, false);
}