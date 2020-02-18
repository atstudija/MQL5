//+------------------------------------------------------------------+
//|                                                 AT_Functions.mqh |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
// #include <AT/AT_Functions.mqh>

// AT_RemoveAllIndicators();
// AT_MessageVerticalDouble();
// AT_MessageHorisontalDouble();
// AT_CountPositionsBySymbol(string symbol)
// AT_Position_Type_ToString(int type)

#property copyright "Copyright 2019, AT-Studija IK."
//#property link      ""

void AT_RemoveAllIndicators()
   {
      int subwindows=(int)ChartGetInteger(0,CHART_WINDOWS_TOTAL);
   
      for(int i=subwindows;i>=0;i--)
        {
         int indicators=ChartIndicatorsTotal(0,i);

         for(int j=indicators-1; j>=0; j--)
           {
            ChartIndicatorDelete(0,i,ChartIndicatorName(0,i,j));
           }
        }
   }
   
void AT_MessageVerticalDouble(double a1,
                              double a2=NULL,
                              double a3=NULL,
                              double a4=NULL,
                              double a5=NULL,
                              double a6=NULL,
                              double a7=NULL,
                              double a8=NULL,
                              double a9=NULL,
                              double a10=NULL
                              )
{ 
   string msg;
   
   msg="Ret-1: " + DoubleToString(NormalizeDouble(a1,_Digits),_Digits) + "\n";
   if(a2){msg += "Ret-2: " + DoubleToString(NormalizeDouble(a2,_Digits),_Digits) + "\n";}
   if(a3){msg += "Ret-3: " + DoubleToString(NormalizeDouble(a3,_Digits),_Digits) + "\n";}
   if(a4){msg += "Ret-4: " + DoubleToString(NormalizeDouble(a4,_Digits),_Digits) + "\n";}
   if(a5){msg += "Ret-5: " + DoubleToString(NormalizeDouble(a5,_Digits),_Digits) + "\n";}
   if(a6){msg += "Ret-6: " + DoubleToString(NormalizeDouble(a6,_Digits),_Digits) + "\n";}
   if(a7){msg += "Ret-7: " + DoubleToString(NormalizeDouble(a7,_Digits),_Digits) + "\n";}
   if(a8){msg += "Ret-8: " + DoubleToString(NormalizeDouble(a8,_Digits),_Digits) + "\n";}
   if(a9){msg += "Ret-9: " + DoubleToString(NormalizeDouble(a9,_Digits),_Digits) + "\n";}
   if(a10){msg += "Ret-10: " + DoubleToString(NormalizeDouble(a10,_Digits),_Digits);}
   
      MessageBox(msg);
      
      
}
string AT_TextVert10(double a1,
                              double a2=NULL,
                              double a3=NULL,
                              double a4=NULL,
                              double a5=NULL,
                              double a6=NULL,
                              double a7=NULL,
                              double a8=NULL,
                              double a9=NULL,
                              double a10=NULL
                              )
   {
   
      string msg;

      msg="Ret-1: " + DoubleToString(NormalizeDouble(a1,_Digits),_Digits) + "\n";
      if(a2){msg += "Ret-2: " + DoubleToString(NormalizeDouble(a2,_Digits),_Digits) + "\n";}
      if(a3){msg += "Ret-3: " + DoubleToString(NormalizeDouble(a3,_Digits),_Digits) + "\n";}
      if(a4){msg += "Ret-4: " + DoubleToString(NormalizeDouble(a4,_Digits),_Digits) + "\n";}
      if(a5){msg += "Ret-5: " + DoubleToString(NormalizeDouble(a5,_Digits),_Digits) + "\n";}
      if(a6){msg += "Ret-6: " + DoubleToString(NormalizeDouble(a6,_Digits),_Digits) + "\n";}
      if(a7){msg += "Ret-7: " + DoubleToString(NormalizeDouble(a7,_Digits),_Digits) + "\n";}
      if(a8){msg += "Ret-8: " + DoubleToString(NormalizeDouble(a8,_Digits),_Digits) + "\n";}
      if(a9){msg += "Ret-9: " + DoubleToString(NormalizeDouble(a9,_Digits),_Digits) + "\n";}
      if(a10){msg += "Ret-10: " + DoubleToString(NormalizeDouble(a10,_Digits),_Digits);}
      
      return msg;
   }
                              
void AT_MessageHorisontalDouble(double a1,
                              double a2=NULL,
                              double a3=NULL,
                              double a4=NULL,
                              double a5=NULL,
                              double a6=NULL,
                              double a7=NULL,
                              double a8=NULL,
                              double a9=NULL,
                              double a10=NULL
                              )
{ 
   string msg;
   
   
   msg="Ret-1: " + DoubleToString(NormalizeDouble(a1,_Digits),_Digits);
   if(a2){msg += " Ret-2: " + DoubleToString(NormalizeDouble(a2,_Digits),_Digits);}
   if(a3){msg += " Ret-3: " + DoubleToString(NormalizeDouble(a3,_Digits),_Digits);}
   if(a4){msg += " Ret-4: " + DoubleToString(NormalizeDouble(a4,_Digits),_Digits);}
   if(a5){msg += " Ret-5: " + DoubleToString(NormalizeDouble(a5,_Digits),_Digits);}
   if(a6){msg += " Ret-6: " + DoubleToString(NormalizeDouble(a6,_Digits),_Digits);}
   if(a7){msg += " Ret-7: " + DoubleToString(NormalizeDouble(a7,_Digits),_Digits);}
   if(a8){msg += " Ret-8: " + DoubleToString(NormalizeDouble(a8,_Digits),_Digits);}
   if(a9){msg += " Ret-9: " + DoubleToString(NormalizeDouble(a9,_Digits),_Digits);}
   if(a10){msg += " Ret-10: " + DoubleToString(NormalizeDouble(a10,_Digits),_Digits);}
   
      MessageBox(msg);
      
      
}

int AT_CountPositionsBySymbol(string symbol)
   {
      int positionsForCurrentCurrencyPair=0;
      for(int i=PositionsTotal()-1; i>=0; i--)
      {
         string positionSymbol=PositionGetSymbol(i);
         if(symbol==positionSymbol)
         {
            positionsForCurrentCurrencyPair+=1;
         }
      }
   
      return positionsForCurrentCurrencyPair;
   }

//*****************************************************//

   string AT_Position_Type_ToString(int type)
   {
      switch(type)
      {
         case POSITION_TYPE_BUY: return "BUY";
         case POSITION_TYPE_SELL: return "SELL";
         default: return "";
      }
   }

//*****************************************************//

   bool AT_NewBarOpened()
   {
      return false;
   }

datetime AT_DateStart()
   {
      MqlDateTime timeCur;
      TimeCurrent(timeCur);
      
      MqlDateTime timeStru;                              
      timeStru.year = timeCur.year;
      timeStru.mon = timeCur.mon;
      timeStru.day = timeCur.day;
      timeStru.hour = 0;
      timeStru.min = 0;
      timeStru.sec = 0;
      datetime dtTime = StructToTime(timeStru);
   return dtTime;
   }
   
datetime AT_DateCurr()
   {
      MqlDateTime timeCur;
      TimeCurrent(timeCur);
  
      datetime dtTime = StructToTime(timeCur);
   return dtTime;
   } 
   
string AT_getUninitReasonText(int reasonCode)
  {
   string text="";
//---
   switch(reasonCode)
     {
      case REASON_ACCOUNT:
         text="Account was changed";break;
      case REASON_CHARTCHANGE:
         text="Symbol or timeframe was changed";break;
      case REASON_CHARTCLOSE:
         text="Chart was closed";break;
      case REASON_PARAMETERS:
         text="Input-parameter was changed";break;
      case REASON_RECOMPILE:
         text="Program "+__FILE__+" was recompiled";break;
      case REASON_REMOVE:
         text="Program "+__FILE__+" was removed from chart";break;
      case REASON_TEMPLATE:
         text="New template was applied to chart";break;
      default:text="Another reason";
     }
//---
   return text;
  } 
 
 void AT_DeinitIndicator(int reason)
   {
      Comment("");
      Print(__FUNCTION__," Deinit code = ",reason,", ",AT_getUninitReasonText(reason),".");
      ObjectsDeleteAll(0,-1);
      
   }