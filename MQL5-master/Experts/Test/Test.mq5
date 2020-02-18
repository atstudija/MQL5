//+------------------------------------------------------------------+
//|                                                         Test.mq5 |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
//#import "AT_Inc.dll"
 //  int Add(int left,int right);
 //  int Sub(int left,int right);
 //  float AddFloat(float left,float right);
 //  double AddDouble(double left,double right);
//#import

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
   #include <AT/Init/IndInit.mqh>
//MqlTradeResult result;
//B1 = AA_OpenBuyRetResult(result,volume,sl,tp);
//S1 = AA_OpenSellRetResult(result,volume,sl,tp);
//B2 = AA_OpenBuyRetResult(result,volume,sl,tp);
//S2 = AA_OpenSellRetResult(result,volume,sl,tp);

/*
if(result.retcode == TRADE_RETCODE_DONE){
   Print("DONE: ",result.retcode);
}
*/
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   #include <AT/DeInit/IndDeinit.mqh>
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---

      double MA5[];ArraySetAsSeries(MA5,true);
      CopyBuffer(iMA(_Symbol,_Period,5,0,MODE_EMA,PRICE_CLOSE),0,0,100,MA5);
      
      double MA12[];ArraySetAsSeries(MA12,true);
      CopyBuffer(iMA(_Symbol,_Period,12,0,MODE_EMA,PRICE_CLOSE),0,0,100,MA12);
     
      double MA100[];ArraySetAsSeries(MA100,true);
      CopyBuffer(iMA(_Symbol,_Period,200,0,MODE_EMA,PRICE_CLOSE),0,0,100,MA100);
      
      double MACD[];ArraySetAsSeries(MACD,true);
    //  CopyBuffer(iMACD(_Symbol,_Period,12,26,9,PRICE_CLOSE),0,0,100,MACD);
      
      double RSI21[];ArraySetAsSeries(RSI21,true);
    //  CopyBuffer(iRSI(_Symbol,_Period,21,PRICE_CLOSE),0,0,100,RSI21);

      double RSI9[];ArraySetAsSeries(RSI9,true);
      CopyBuffer(iRSI(_Symbol,_Period,9,PRICE_CLOSE),0,0,100,RSI9);
      
      
      double SAR[];ArraySetAsSeries(SAR,true);
      CopyBuffer(iSAR(_Symbol,_Period,0.02,0.2),0,0,100,SAR);
      
      double CLOSE[];ArraySetAsSeries(CLOSE,true);
      CopyClose(_Symbol,_Period,0,100,CLOSE);
      
      if(NewBar.isNewBar()){
         if(((MA5[1] > MA12[1]) && (SAR[1] < CLOSE[1]) && (MA100[1] < CLOSE[1])) || ((MA5[1] < MA12[1]) && (SAR[1] < CLOSE[1]) && (MA100[1] < CLOSE[1]))){
         // BuyArrow();
            //if(buyTicket == 0){
              // BuyArrow();
               if(PositionsTotal() == 0){
                 MqlTradeResult result;
                 
                 buyTicket = AA_OpenBuyRetResult(result,volume,sl,tp);
               }
           // }
         }else{
         //    BuyStopArrow();
             CloseAllPositions();  
         }
         if((RSI9[2]<60)&&(RSI9[1]>=60)&&MA5[1]<=MA12[1]){
          // BuyStopArrow();
          // CloseAllPositions();
          // buyTicket = 0;
         }
      }
      
      
      
      
      
      
      
      //int buyTicket = 0, sellTicket = 0;
      if(NewBar.isNewBar()){
         if((RSI9[2]<40)&&(RSI9[1]>=40)&&MA5[1]>MA12[1]){
          //  BuyArrow();
            //if(buyTicket == 0){
              // BuyArrow();
               if(PositionsTotal() == 0){
                 MqlTradeResult result;
                 
                // buyTicket = AA_OpenBuyRetResult(result,volume,sl,tp);
               }
           // }
         }
         if((RSI9[2]<60)&&(RSI9[1]>=60)&&MA5[1]<=MA12[1]){
        //   BuyStopArrow();
      //     CloseAllPositions();
          // buyTicket = 0;
         }
      }
      
      if(NewBar.isNewBar()){
         if((RSI9[2]<40)&&(RSI9[1]>=40)&&MA5[1]>MA12[1]){
          //  BuyArrow();
            //if(buyTicket == 0){
              // BuyArrow();
               if(PositionsTotal() == 0){
                 MqlTradeResult result;
                 
              //   buyTicket = AA_OpenBuyRetResult(result,volume,sl,tp);
               }
           // }
         }
         if((RSI9[2]<60)&&(RSI9[1]>=60)&&MA5[1]<=MA12[1]){
      //     BuyStopArrow();
     //      CloseAllPositions();
          // buyTicket = 0;
         }
      }
     
      if(NewBar.isNewBar()){
         if((MA5[1]>MA12[1])&&(MA5[2]<MA12[2])&&RSI21[1]>=50){
          //  BuyArrow();
            if(buyTicket == 0){
              // BuyArrow();
             //  if(PositionsTotal() == 0){
             //    MqlTradeResult result;
                 
             //    buyTicket = AA_OpenBuyRetResult(result,volume,sl,tp);
             //  }
            }
         }
         if((MA5[1]<MA12[1])&&(MA5[2]>MA12[2])){
           // SellArrow();
         }
      }






      double AO[];ArraySetAsSeries(AO,true);
  //    CopyBuffer(iAO(_Symbol,_Period),0,0,100,AO);
      
      double AO5[];ArraySetAsSeries(AO,true);
  //    CopyBuffer(iAO(_Symbol,PERIOD_M15),0,0,100,AO5);
      
      double AC[];ArraySetAsSeries(AC,true);
  //    CopyBuffer(iAC(_Symbol,_Period),0,0,100,AC);
      
      double AC5[];ArraySetAsSeries(AC5,true);
  //    CopyBuffer(iAC(_Symbol,PERIOD_H1),0,0,100,AC5);
      
      MqlRates Rates[];
      bool ACBuy = false, ACSell = false;
      bool AC5Buy = false, AC5Sell = false;
      
      
      if(NewBar.isNewBar()){
         if(((AO5[3] > AO5[2]) && (AO5[2] < AO5[1]) && (AO[2] < 0)) ||
            ((AO5[4] > AO5[3]) && (AO5[3] < AO5[2]) && (AO[3] < 0))){
               
         }
         if(((AO5[3] < AO5[2]) && (AO5[2] > AO5[1]) && (AO[2] > 0)) ||
            ((AO5[4] < AO5[3]) && (AO5[3] > AO5[2]) && (AO[3] > 0))){
               
         }
         
         if(((AC5[3] > AC5[2]) && (AC5[2] < AC5[1]) && (AC5[2] < 0)) ||
            ((AC5[4] > AC5[3]) && (AC5[3] < AC5[2]) && (AC5[3] < 0))){
               AC5Buy = true;   
         }
         if(((AC5[3] < AC5[2]) && (AC5[2] > AC5[1]) && (AC5[2] > 0)) ||
            ((AC5[4] < AC5[3]) && (AC5[3] > AC5[2]) && (AC5[3] > 0))){
               AC5Sell = true;
         }
    //-----------------
         if((AO5[2] < AO5[1]) && (AO5[2] > 0))
         {
           /// AO5Buy = true;      
         }
         if((AO5[2] > AO5[1]) && (AO5[2] < 0))
         {
           // AO5Sell = true;   
         }
         if((AC5[2] < AC5[1]) && (AC5[2] > 0))
         {
            //AC5Buy = true;      
         }else{
         
         }
         if((AC5[2] > AC5[1]) && (AC5[2] < 0))
         {
            //AC5Sell = true;   
         }else{
         
         }
         if(AC5Buy == true){
            if(buyTicket == 0){
              // BuyArrow();
               if(PositionsTotal() == 0){
                 MqlTradeResult result;
                // buyTicket = AA_OpenBuyRetResult(result,volume,sl,tp);
               }
            }
         }else{
            if(PositionsTotal() > 0){
             //  trade.PositionClose(buyTicket);
             //  buyTicket = 0;
            }   
         }
         if(AC5Sell == true){
           // SellArrow();
            if(PositionsTotal() == 0){
            //   OpenSellPosition();
            }
         }else{
            if(PositionsTotal() > 0){
            //   CloseAllPositions();
            }   
         }
      }
  }
//+------------------------------------------------------------------+
   