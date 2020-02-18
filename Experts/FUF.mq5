//+------------------------------------------------------------------+
//|                                                          FUF.mq5 |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."
#property link      "https://www.atstudija.id.lv"
#property version   "1.00"

#include <AA/Indicators/C_MA.mqh>
#include <AA/Indicators/C_Stochastic.mqh>
C_MA c_ma;
C_MA c_ma_m5(PERIOD_M5);
C_Stochastic stocastics;
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- create timer
   EventSetTimer(60);
   
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//--- destroy timer
   EventKillTimer();
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
     stocastics.Buffers();
//double MA[]; c_ma.SMA(MA);
//double MA3[]; c_ma.SMA(MA3, 3, H);

double MA_10_M5[]; c_ma_m5.SMA(MA_10_M5, 1);
//double ask = c_ma.SMA_DIFF(3);
//Comment("ASK: ", "ask"," ",/*SymbolInfoDouble(_Symbol,SYMBOL_ASK),*/ "\n", "m5:   ", NormalizeDouble(MA_10_M5[1],_Digits));

              /*
               Comment("Close: ", PRICE_CLOSE, "\n",
                               "Open: ", PRICE_OPEN, "\n",
                               "High: ", PRICE_HIGH, "\n",
                               "Llow: ", PRICE_LOW, "\n",
                               "Median: ", PRICE_MEDIAN, "\n",
                               "Typical: ", PRICE_TYPICAL, "\n",
                               "Weighted: ", PRICE_WEIGHTED
               );
               */
  }
//+------------------------------------------------------------------+
//| Timer function                                                   |
//+------------------------------------------------------------------+
void OnTimer()
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Trade function                                                   |
//+------------------------------------------------------------------+
void OnTrade()
  {
//---
   
  }
//+------------------------------------------------------------------+
//| TradeTransaction function                                        |
//+------------------------------------------------------------------+
void OnTradeTransaction(const MqlTradeTransaction& trans,
                        const MqlTradeRequest& request,
                        const MqlTradeResult& result)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Tester function                                                  |
//+------------------------------------------------------------------+
double OnTester()
  {
//---
   double ret=0.0;
//---

//---
   return(ret);
  }
//+------------------------------------------------------------------+
//| TesterInit function                                              |
//+------------------------------------------------------------------+
void OnTesterInit()
  {
//---
   
  }
//+------------------------------------------------------------------+
//| TesterPass function                                              |
//+------------------------------------------------------------------+
void OnTesterPass()
  {
//---
   
  }
//+------------------------------------------------------------------+
//| TesterDeinit function                                            |
//+------------------------------------------------------------------+
void OnTesterDeinit()
  {
//---
   
  }
//+------------------------------------------------------------------+
//| ChartEvent function                                              |
//+------------------------------------------------------------------+
void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| BookEvent function                                               |
//+------------------------------------------------------------------+
void OnBookEvent(const string &symbol)
  {
//---
   
  }
//+------------------------------------------------------------------+
