//+------------------------------------------------------------------+
//|                                              C_LWMA5_X_SMA10.mqh |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."
#property link      "https://www.atstudija.id.lv"
#property version   "1.00"
#include <AA/Indicators/C_MA.mqh>

C_MA ma;

class C_LWMA5_X_SMA10
  {
private:

public:
                     C_LWMA5_X_SMA10();
                    ~C_LWMA5_X_SMA10();
                    
                    int cross();
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
C_LWMA5_X_SMA10::C_LWMA5_X_SMA10()
  {
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
C_LWMA5_X_SMA10::~C_LWMA5_X_SMA10()
  {
  }
//+------------------------------------------------------------------+

int C_LWMA5_X_SMA10::cross()
     {
          int ret_cross = 0;
          int ret_diff = 0;
         double LWMA_5[]; ma.LWMA(LWMA_5, 5);
         double SMA_10[]; ma.SMA(SMA_10, 10);
         
         if((LWMA_5[1] < SMA_10[1]) && (LWMA_5[0] > SMA_10[0 ])){
               ret_cross = 1;
         }
         if((LWMA_5[1] > SMA_10[1]) && (LWMA_5[0] <  SMA_10[0 ])){
               ret_cross = -1;
         }
        
          
         if(LWMA_5[0] > SMA_10[0]){
               ret_diff = 1;
         }
         if(LWMA_5[0] < SMA_10[0]){
               ret_diff = -1;
         }   
                                     
         Comment((string)NormalizeDouble(LWMA_5[0],_Digits), " - ", (string)NormalizeDouble(SMA_10[0],_Digits));
         return (ret_cross);
     }