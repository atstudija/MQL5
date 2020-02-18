//+------------------------------------------------------------------+
//|                                                        AT_AO.mq5 |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+

#include <AT/AT_Positions.mqh>
#include <AT/AT_Arrows.mqh>
#include <AT/lib_cisnewbar.mqh>
CisNewBar NewBar;
MqlRates Rates[];
input int MA_Period1 = 1;
input int MA_Period = 60;
int OnInit()
  {
  
//---
//   ChartIndicatorAdd(ChartID(),1,iAO(_Symbol,_Period));
//   ChartIndicatorAdd(ChartID(),2,iAC(_Symbol,_Period));
 //  ChartIndicatorAdd(ChartID(),3,iRSI(_Symbol,_Period,14,PRICE_CLOSE));
 //  ChartIndicatorAdd(ChartID(),0,iMA(_Symbol,_Period,MA_Period1, 0, MODE_SMA, PRICE_CLOSE));
 //  ChartIndicatorAdd(ChartID(),0,iMA(_Symbol,_Period,MA_Period, 0, MODE_SMA, PRICE_CLOSE));
//---
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
void OnTick()
  {
//---
      double MA1[];ArraySetAsSeries(MA1,true);
      CopyBuffer(iMA(_Symbol,_Period,MA_Period1, 0, MODE_SMA, PRICE_CLOSE),0,0,100,MA1);
      
      double MA60[];ArraySetAsSeries(MA60,true);
      CopyBuffer(iMA(_Symbol,_Period,MA_Period, 0, MODE_SMA, PRICE_CLOSE),0,0,100,MA60);
      
      double AO[];ArraySetAsSeries(AO,true);
      CopyBuffer(iAO(_Symbol,_Period),0,0,100,AO);
      
      double AO5[];ArraySetAsSeries(AO,true);
      CopyBuffer(iAO(_Symbol,PERIOD_M5),0,0,100,AO5);
      
      double AC[];ArraySetAsSeries(AC,true);
      CopyBuffer(iAC(_Symbol,_Period),0,0,100,AC);
      
      double RSI[];ArraySetAsSeries(RSI,true);
      CopyBuffer(iRSI(_Symbol,_Period,14,PRICE_CLOSE),0,0,100,RSI);
      
      ArraySetAsSeries(Rates,true);
      
      CopyRates(_Symbol,_Period,0,10,Rates);
                                                                                          
      if(NewBar.isNewBar()){
         bool aoSell=false;
         bool aoBuy=false;
         bool ao5Sell=false;
         bool ao5Buy=false;
         if((AO[3]<AO[2])&&(AO[1]<AO[2])&&(AO[2]>0)){
            aoSell=true;
         }else{
            aoSell=false;
         }
         if((AO[3]>AO[2])&&(AO[1]>AO[2])&&(AO[2]<0)){
            aoBuy=true;
         }else{
            aoBuy=false;
         }
         if((AO5[3]<AO5[2])&&(AO5[1]<AO5[2])&&(AO5[2]>0)){
            ao5Sell=true;
         }else{
            ao5Sell=false;
         }
         if((AO5[3]>AO5[2])&&(AO5[1]>AO5[2])&&(AO5[2]<0)){
            ao5Buy=true;
         }else{
            ao5Buy=false;
         }
       //  if(ao5Sell){
            if(aoSell){
          //     SellArrow();
            }
      //   }
      //   if(ao5Buy){
            if(aoBuy){
         //      BuyArrow();
            }
      //   }
      }
   }
          
/*   
   if(NewBar.isNewBar()){
    //  if(MA1[1]>MA60[1]){
         if((AO[1]>AO[2])&&(AO[2]>AO[3])&&(AO[3]>AO[4])){
            if((AC[1]>AC[2])&&(AC[2]>AC[3])&&(AC[3]>AC[4])){
               if(RSI[1]>50){
                  BuyArrow();
                  if(PositionsTotal()==0){
                     OpenBuyPosition();
                  }
               }
            }
         }
         if((AO[1]<AO[2])&&(AO[2]<AO[3])&&(AO[3]<AO[4])){
            if((AC[1]<AC[2])&&(AC[2]<AC[3])&&(AC[3]<AC[4])){
               if(RSI[1]<50){
                  SellArrow();
                  if(PositionsTotal()==0){
                     OpenSellPosition();
                  }
               }
            }
         }
         if((RSI[1]<50)&&(RSI[0]>=50)){
            CloseAllPositions();
            SellStopArrow();
         }
         if((RSI[1]>50)&&(RSI[0]<=50)){
            CloseAllPositions();
            BuyStopArrow();
         }
   //   }
   //   if(MA1[1]<MA60[1]){
   
         
         
         
   //   }
   }
   */
  //}
//+------------------------------------------------------------------+
/*
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
   string name = "ST_up_stop" + TimeToString(Rates[0].time);

	ObjectCreate(0, name, OBJ_ARROW, 0, Rates[0].time, Rates[0].low - (3 * _Point));
	ObjectSetInteger(0, name, OBJPROP_ARROWCODE, 251);
	ObjectSetInteger(0, name, OBJPROP_COLOR, clrBlue);
	ObjectSetInteger(0, name, OBJPROP_SELECTABLE, false);
}

void SellStopArrow(){
   string name = "ST_down_stop" + TimeToString(Rates[0].time);

	ObjectCreate(0, name, OBJ_ARROW, 0, Rates[0].time, Rates[0].high + (5 * _Point));
	ObjectSetInteger(0, name, OBJPROP_ARROWCODE, 251);
	ObjectSetInteger(0, name, OBJPROP_COLOR, clrRed);
	ObjectSetInteger(0, name, OBJPROP_SELECTABLE, false);
}
*/