//+------------------------------------------------------------------+
//|                                                   AT_Objects.mqh |
//|                                   Copyright 2019, AT-Studija IK. |
//|                                                      https://www |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, AT-Studija IK."
#property link      "https://www"
#include <Controls/Label.mqh>

//#include <Controls/AT_Objects.mqh>

//AT_Label(string text,string name="LBL_1",int x1=5,int x2=5)

void AT_Label(string at_text="AT_Label Text",color at_color=clrRed,string at_name="LBL_1",int at_x1=5,int at_x2=5)
   {
      ObjectCreate(ChartID(),at_name,OBJ_LABEL,0,0,0);
      ObjectSetString(0,at_name,OBJPROP_TEXT,at_text);
      ObjectSetInteger(0,at_name,OBJPROP_ANCHOR,ANCHOR_LEFT_LOWER);
      ObjectSetInteger(0,at_name,OBJPROP_CORNER,CORNER_LEFT_LOWER);
      ObjectSetInteger(0,at_name,OBJPROP_XDISTANCE,at_x1);
      ObjectSetInteger(0,at_name,OBJPROP_YDISTANCE,at_x2);
      ObjectSetInteger(0,at_name,OBJPROP_COLOR,at_color);
   }
