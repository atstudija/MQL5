//+------------------------------------------------------------------+
//|                                                    IndDeinit.mqh |
//|                                    Copyright 2020, ATStudija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, ATStudija IK."
#property link      "https://www.atstudija.id.lv"

int subwindows=(int)ChartGetInteger(0,CHART_WINDOWS_TOTAL);

for(int i=subwindows;i>=0;i--)
  {
   int indicators=ChartIndicatorsTotal(0,i);

   for(int j=indicators-1; j>=0; j--)
     {
      ChartIndicatorDelete(0,i,ChartIndicatorName(0,i,j));
     }
  }
ObjectsDeleteAll(0,0,-1);