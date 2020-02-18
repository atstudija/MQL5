//+------------------------------------------------------------------+
//|                                                   BullBearMA.mq5 |
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
#import "AT_Inc.dll"
#import
//#import "AA_Inc.dll"
//#import
bool new30Bar=false;
int OnInit()
  {
//---
string args[];
  // MainClass::Main(args);
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
      double MA13[];ArraySetAsSeries(MA13,true);
      CopyBuffer(iMA(_Symbol,_Period,13,0,MODE_EMA,PRICE_CLOSE),0,0,100,MA13);
      
      double MA3[];ArraySetAsSeries(MA3,true);
      CopyBuffer(iMA(_Symbol,_Period,3,0,MODE_EMA,PRICE_CLOSE),0,0,100,MA3);
      
      double BULLS[];ArraySetAsSeries(BULLS,true);
      CopyBuffer(iBullsPower(_Symbol,_Period,13),0,0,100,BULLS);
   
      double BEARS[];ArraySetAsSeries(BEARS,true);
      CopyBuffer(iBearsPower(_Symbol,_Period,13),0,0,100,BEARS);
      
      
      MqlRates Rates[];ArraySetAsSeries(Rates,true);
      CopyRates(_Symbol,_Period,0,100,Rates);
      
     //
   MqlDateTime mqltime;
   TimeCurrent(mqltime);
   //TimeToStruct(Rates[0].time,mqltime);
   datetime curdat;

   if((int)mqltime.sec == 30){ // lmazaaks vai vienaads vai lielaaks un  vienaads
      new30Bar =true;
   }else{
      new30Bar =false;
   }
     Comment("curr: ", mqltime.sec, "CloseMQL: ", new30Bar);

      
      string MADiff = NULL;
      string BearsDiff = "None";
      string BullsDiff = "None";
      string BullsUp = "None";
      string BearsUp = "None";
      string BearsDown = "None";
      string BullsDown = "None";
    
      if(MA13[2] == MA13[1]){
         MADiff = "None";
      }
      if(MA13[2] < MA13[1]){
         MADiff = "Up";
      }
      if(MA13[2] > MA13[1]){
         MADiff = "Down";
      }
      if((BEARS[1]>0)&&(BEARS[1]>BEARS[2])){
         BearsDiff = "OK";
      }
      if((BULLS[1]<0)&&(BULLS[1]<BULLS[2])){
         BullsDiff = "OK";
      }
      if(BEARS[1]>BEARS[2]){
         BearsUp = "OK";
      }
      if(BULLS[1]>BULLS[2]){
         BullsUp = "OK";
      }
      if(BEARS[1]<BEARS[2]){
         BearsDown = "OK";
      }
      if(BULLS[1]<BULLS[2]){
         BullsDown = "OK";
      }
      if((MADiff == "Up") && (BearsDiff == "OK") && (BullsDown == "OK")){
         BuyArrow();
      }
      if((MADiff == "Down") && (BullsDiff == "OK") && (BearsUp == "OK")){
         SellArrow();
      }
      if((MADiff == "Up") && (BearsDiff == "OK") && (BullsUp == "OK")){
         BuyStopArrow();
      }
      if((MADiff == "Down") && (BullsDiff == "OK") && (BearsDown == "OK")){
         SellStopArrow();
      }
     // Comment("MADiff: ",MADiff," " ,BearsDiff," " ,BullsDiff);

  }
//+------------------------------------------------------------------+
 bool isNewBarr(){
   return false;
 }