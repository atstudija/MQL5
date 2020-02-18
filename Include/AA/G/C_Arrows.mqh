//+------------------------------------------------------------------+
//|                                                     C_Arrows.mqh |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."

class C_Arrows
  {
      protected:
         long           m_BuyArrowsCount;
         long           m_SellArrowsCount;
         long           m_BuyStopArrowsCount;
         long           m_SellStopArrowsCount;
      public:
         //--- Constructor and destructor methods
                           C_Arrows(void);
                          ~C_Arrows(void);
                    
         void BuyArrow(double price, datetime time);
         void SellArrow(double price, datetime time);
         void BuyStopArrow(double price, datetime time);
         void SellStopArrow(double price, datetime time);

  };
//+------------------------------------------------------------------+
//| Constructor                                                      |
//+------------------------------------------------------------------+
C_Arrows::C_Arrows(void) : m_BuyArrowsCount(1),
                                         m_SellArrowsCount(1),
                                         m_BuyStopArrowsCount(1),
                                         m_SellStopArrowsCount(1)
                                         
  {
   //Alert("Hello world! I am run when an object of type C_Arrows is created!");
      
  }
//+------------------------------------------------------------------+
//| Destructor                                                       |
//+------------------------------------------------------------------+
C_Arrows::~C_Arrows(void)
  {
   //Alert("Goodbye world! I am run when the object is destroyed!");
   
  }

   void C_Arrows::BuyArrow(double price = 0,datetime time = 0)
   {
        long  chart_ID = 0; 
        string name = "BuyArrow" + (string)m_BuyArrowsCount;
        int sub_window = 0;   
        if(price == 0){
            price = SymbolInfoDouble(_Symbol, SYMBOL_ASK);
        }
        if(time == 0){
         time = TimeCurrent();
        }
         if(ObjectCreate(chart_ID, name, OBJ_ARROW_BUY, sub_window, time, price)){
            ObjectSetInteger(chart_ID, name, OBJPROP_COLOR, clrGreen);
            ObjectSetInteger(chart_ID, name, OBJPROP_STYLE, STYLE_SOLID);
            ObjectSetInteger(chart_ID, name, OBJPROP_WIDTH, 1);

            m_BuyArrowsCount++;
         }

      
   }
      
   void C_Arrows::BuyStopArrow(double price = 0, datetime time = 0)
   {
        long  chart_ID = 0; 
        string name = "BuyStopArrow";// + (string)m_BuyStopArrowsCount;
        int sub_window = 0;   
        if(price == 0){
            price = SymbolInfoDouble(_Symbol, SYMBOL_BID);
        }
        if(time == 0){
         time = TimeCurrent();
        }
         ResetLastError();
         if(!ObjectCreate(chart_ID, name, OBJ_ARROW_STOP, sub_window, time, price))
        {
            Print(__FUNCTION__,
                  ": failed to create \"Stop\" sign! Error code = ",GetLastError());
           }else{
         
            ObjectSetInteger(chart_ID, name, OBJPROP_ANCHOR, ANCHOR_BOTTOM);
            ObjectSetInteger(chart_ID, name, OBJPROP_COLOR, clrYellow);
            ObjectSetInteger(chart_ID, name, OBJPROP_STYLE, STYLE_SOLID);
            ObjectSetInteger(chart_ID, name, OBJPROP_WIDTH, 5);

            m_BuyStopArrowsCount++;
         }

      
   }
    void C_Arrows::SellArrow(double price=0,datetime time=0)
   {

        long  chart_ID=0; 
        string name="SellArrow" + (string)m_SellArrowsCount;
        int sub_window=0;   
        if(price == 0){
            price = SymbolInfoDouble(_Symbol,SYMBOL_BID);
        }
        if(time == 0){
         time = TimeCurrent();
        }


         if(ObjectCreate(chart_ID,name,OBJ_ARROW_SELL,sub_window,time,price)){
            ObjectSetInteger(chart_ID,name,OBJPROP_COLOR,clrRed);
            ObjectSetInteger(chart_ID,name,OBJPROP_STYLE,STYLE_SOLID);
            ObjectSetInteger(chart_ID,name,OBJPROP_WIDTH,1);
      //      ObjectSetInteger(chart_ID,name,OBJPROP_ZORDER,0);
                                         
            m_SellArrowsCount++;
         }

      
   }
   
   void C_Arrows::SellStopArrow(double price=0,datetime time=0)
   {

        long  chart_ID=0; 
        string name="SellStopArrow" + (string)m_SellStopArrowsCount;
        int sub_window=0;   
        if(price == 0){
            price = SymbolInfoDouble(_Symbol,SYMBOL_ASK);
        }
        if(time == 0){
         time = TimeCurrent();
        }


         if(ObjectCreate(chart_ID,name,OBJ_ARROW_STOP,sub_window,time,price)){
            ObjectSetInteger(chart_ID,name,OBJPROP_COLOR,clrRed);
            ObjectSetInteger(chart_ID,name,OBJPROP_STYLE,STYLE_SOLID);
            ObjectSetInteger(chart_ID,name,OBJPROP_WIDTH,1);
      //      ObjectSetInteger(chart_ID,name,OBJPROP_ZORDER,0);
     //       ObjectSetInteger(chart_ID,name,OBJPROP_ANCHOR,ANCHOR_RIGHT);
            m_SellStopArrowsCount++;
         }

      
   }