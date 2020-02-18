//+------------------------------------------------------------------+
//|                                                     C_Labels.mqh |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."
#property link      "https://www.atstudija.id.lv"

class C_Labels
  {
      protected:
         long           m_text_count;
      
      public:
         //--- Constructor and destructor methods
                           C_Labels(void);
                          ~C_Labels(void);
                    
         void Create(string text, double price, datetime time);
          void Simple(void);
  };
//+------------------------------------------------------------------+
//| Constructor                                                      |
//+------------------------------------------------------------------+
C_Labels::C_Labels(void)
  {
  // Alert("Hello world! I am run when an object of type C_Labels is created!");
  }
//+------------------------------------------------------------------+
//| Destructor                                                       |
//+------------------------------------------------------------------+
C_Labels::~C_Labels(void)
  {
  // Alert("Goodbye world! I am run when the object is destroyed!");
  }



 void C_Labels::Create(string text, double price = 0,datetime time = 0)
   {
        //Alert("kuku");
        long  chart_ID = 0; 
        int sub_window = 0; 
        MqlDateTime date;
        TimeCurrent(date);
        string name = "Text" + (string)date.min;
       //  Alert(name);
        if(price == 0){
            price = SymbolInfoDouble(_Symbol, SYMBOL_ASK);
        }
        if(time == 0){
         time = TimeCurrent();
        }
      if(ObjectFind(chart_ID, name) != -1) ObjectDelete(chart_ID, name);
      ObjectCreate(chart_ID, name, OBJ_TEXT, sub_window, time, price);
      ObjectSetString(chart_ID, name, OBJPROP_TEXT, text);
      ObjectSetInteger(chart_ID, name, OBJPROP_COLOR, clrAqua);
      //ObjectSetInteger(chart_ID, name, OBJPROP_CORNER, CORNER_);
      ObjectSetDouble(chart_ID, name, OBJPROP_ANGLE, 90);
      ObjectSetInteger(chart_ID,name,OBJPROP_ANCHOR,ANCHOR_LEFT);
     // ObjectSetInteger(chart_ID, name, OBJPROP_XDISTANCE,5);
     // ObjectSetInteger(chart_ID, name, OBJPROP_YDISTANCE,20);
     
      m_text_count++;
  }

void C_Labels::Simple(void)    
  {     
  /*                                          
         ObjectCreate(chart_ID,name,OBJ_LABEL,sub_window,0,0))

      //--- set label coordinates
         ObjectSetInteger(chart_ID,name,OBJPROP_XDISTANCE,x);
         ObjectSetInteger(chart_ID,name,OBJPROP_YDISTANCE,y);
      //--- set the chart's corner, relative to which point coordinates are defined
         ObjectSetInteger(chart_ID,name,OBJPROP_CORNER,corner);
      //--- set the text
         ObjectSetString(chart_ID,name,OBJPROP_TEXT,text);
      //--- set text font
         ObjectSetString(chart_ID,name,OBJPROP_FONT,font);
      //--- set font size
         ObjectSetInteger(chart_ID,name,OBJPROP_FONTSIZE,font_size);
      //--- set the slope angle of the text
         ObjectSetDouble(chart_ID,name,OBJPROP_ANGLE,angle);
      //--- set anchor type
         ObjectSetInteger(chart_ID,name,OBJPROP_ANCHOR,anchor);
      //--- set color
         ObjectSetInteger(chart_ID,name,OBJPROP_COLOR,clr);
      //--- display in the foreground (false) or background (true)
         ObjectSetInteger(chart_ID,name,OBJPROP_BACK,back);
      //--- enable (true) or disable (false) the mode of moving the label by mouse
         ObjectSetInteger(chart_ID,name,OBJPROP_SELECTABLE,selection);
         ObjectSetInteger(chart_ID,name,OBJPROP_SELECTED,selection);
      //--- hide (true) or display (false) graphical object name in the object list
         ObjectSetInteger(chart_ID,name,OBJPROP_HIDDEN,hidden);
      //--- set the priority for receiving the event of a mouse click in the chart
         ObjectSetInteger(chart_ID,name,OBJPROP_ZORDER,z_order);
         */
  }