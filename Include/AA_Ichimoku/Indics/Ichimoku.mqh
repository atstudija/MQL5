//+------------------------------------------------------------------+
//|                                                     Ichimoku.mqh |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."
#property link      "https://www.atstudija.id.lv"
#include <AA_Ichimoku/Indics/Rates.mqh>

double SEUKOSPAN_A(int diff = 0){
   double SEUKOSPAN_A[];
   ArraySetAsSeries(SEUKOSPAN_A, true);
   CopyBuffer(iIchimoku(_Symbol,_Period, 9, 26, 52), 2, diff, 100, SEUKOSPAN_A);
   return(SEUKOSPAN_A[0]);
}

double SEUKOSPAN_B(int diff = 0){
   double SEUKOSPAN_B[];
   ArraySetAsSeries(SEUKOSPAN_B, true);
   CopyBuffer(iIchimoku(_Symbol,_Period, 9, 26, 52), 3, diff, 100, SEUKOSPAN_B);
   return(SEUKOSPAN_B[0]);
}

int ICHICLOUDCROSS(int idx = 0){
    if( (CLOSE(idx) > SEUKOSPAN_A(idx)) && (CLOSE(idx) > SEUKOSPAN_B(idx)) ){
      return(1);
   }
   if( (CLOSE(idx) < SEUKOSPAN_A(idx)) && (CLOSE(idx) < SEUKOSPAN_B(idx)) ){
      return(-1);
   }
   return(0);
}

/*
void SEUKOSPAN_A(double& SEUKOSPAN_A[]){
   //double SEUKOSPAN_A[];
   ArraySetAsSeries(SEUKOSPAN_A, true);
   CopyBuffer(iIchimoku(_Symbol,_Period, 9, 26, 52), 2, 0, 100, SEUKOSPAN_A);
}

void SEUKOSPAN_B(double& SEUKOSPAN_B[]){
   //double SEUKOSPAN_B[];
   ArraySetAsSeries(SEUKOSPAN_B, true);
   CopyBuffer(iIchimoku(_Symbol,_Period, 9, 26, 52), 3, 0, 100, SEUKOSPAN_B);
}
*/