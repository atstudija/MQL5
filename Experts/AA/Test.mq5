//+------------------------------------------------------------------+
//|                                                         Test.mq5 |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."
#property link      "https://www.atstudija.id.lv"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
#include <AA/Test.mqh>
#include <AA/CTest.mqh>
#include <AA/G/C_Labels.mqh>
#include <AA/G/C_Arrows.mqh>

C_Labels label;
C_Arrows arrows;
int OnInit()
  {
//---
   
 //  m_ma.SetFirstName("firstname");
 //  Comment(m_ma.GetFirstName());
 
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
      ObjectsDeleteAll(0, -1, -1);
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
      int a =Test();
      int a1 = Test(5);
     // Comment("Test: ",a," Test5: ",a1);
     datetime time = TimeCurrent();
     label.Create(time);
     
    // arrows.BuyArrow();
      arrows.BuyStopArrow();
 //     arrows.SellArrow();
  }
//+------------------------------------------------------------------+
