#include <Controls/Button.mqh>
#include "./AT_Positions.mqh";   
   CButton BuyButton;
   CButton SellButton;
   CButton CloseButton;
   CButton CloseAllButton;
   void DrawButtons(){


      BuyButton.Create(0,"BuyButton",0,200,0,290,25);
      BuyButton.Text("Buy");
      BuyButton.FontSize(12);
      BuyButton.Color(clrWhite);
      BuyButton.ColorBackground(clrGreen);
      
      
      SellButton.Create(0,"SellButton",0,300,0,390,25);
      SellButton.Text("Sell");
      SellButton.FontSize(12);
      SellButton.Color(clrWhite);
      SellButton.ColorBackground(clrRed);
      
      
      CloseButton.Create(0,"CloseButton",0,400,0,490,25);
      CloseButton.Text("Close Position");
      CloseButton.FontSize(8);
      CloseButton.Color(clrWhite);
      CloseButton.ColorBackground(clrBlueViolet);
      
      
      CloseAllButton.Create(0,"CloseAllButton",0,500,0,590,25);
      CloseAllButton.Text("Close All Positions");
      CloseAllButton.FontSize(7);
      CloseAllButton.Color(clrWhite);
      CloseAllButton.ColorBackground(clrBlue);
   }
   
   void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam)
  {
  
  
      if(id==CHARTEVENT_OBJECT_CLICK && sparam=="BuyButton")
      {
         Alert("Buy Button");
         OpenBuyPosition();
      }
      
      if(id==CHARTEVENT_OBJECT_CLICK && sparam=="SellButton")
      {
         Alert("Sel Button");
         OpenSellPosition();
      }
      
      if(id==CHARTEVENT_OBJECT_CLICK && sparam=="CloseButton")
      {
         Alert("Close Position");
         ClosePositionBySymbol(_Symbol);
      }
      
      if(id==CHARTEVENT_OBJECT_CLICK && sparam=="CloseAllButton")
      {
         Alert("Close All Positions");
         CloseAllPositions();
      }   
  }   