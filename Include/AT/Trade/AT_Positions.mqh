   #include<Trade\Trade.mqh>
   #include<AT/AT_Functions.mqh>
   input int StopLossPoints = 0;
   CTrade trade;

   ulong OpenBuyPosition()
   {
      double price=SymbolInfoDouble(_Symbol,SYMBOL_ASK);
      double stopLossPrice = StopLossPoints * _Point;
      double SL = NormalizeDouble(price - stopLossPrice,_Digits);
      string comment = "Comment";
 //     if(AT_CountPositionsBySymbol(_Symbol)==0)
 //     {
         if(!trade.PositionOpen(_Symbol,ORDER_TYPE_BUY,0.10,price,0,0,comment))
           {
            //--- failure message
            Print("PositionOpen() method failed. Return code=",trade.ResultRetcode(),
                  ". Code description: ",trade.ResultRetcodeDescription());
           }
         else
           {
            Print("PositionOpen() method executed successfully. Return code=",trade.ResultRetcode(),
                  " (",trade.ResultRetcodeDescription(),")");
           };
  //    }
  return PositionGetTicket(0);   
   }
   
   ulong OpenSellPosition()
   {
      double price=SymbolInfoDouble(_Symbol,SYMBOL_BID);
      double stopLossPrice = StopLossPoints * _Point;
      double SL = NormalizeDouble(price + stopLossPrice,_Digits);
      string comment = "Comment";
      if(AT_CountPositionsBySymbol(_Symbol)==0)
  //    {
         if(!trade.PositionOpen(_Symbol,ORDER_TYPE_SELL,0.10,price,0,0,comment))
           {
            //--- failure message
            Print("PositionOpen() method failed. Return code=",trade.ResultRetcode(),
                  ". Code description: ",trade.ResultRetcodeDescription());
           }
         else
           {
            Print("PositionOpen() method executed successfully. Return code=",trade.ResultRetcode(),
                  " (",trade.ResultRetcodeDescription(),")");
           };
   //   };
   return PositionGetTicket(0);
   }
  
   void ClosePositionBySymbol(string symbol)
   {
      for(int i=PositionsTotal()-1; i>=0; i--)
      {
         string positionSymbol=PositionGetSymbol(i);
         if(symbol==positionSymbol)
         {
            ulong ticket=PositionGetTicket(i); 
            bool ret = trade.PositionClose(ticket);
           // Alert("ret: ",ret,"\n","ticket: ", ticket);
         }
      }
   }

  void CloseAllPositions()
  {
     for(int i=PositionsTotal()-1; i>=0; i--)
      {
      
      ulong ticket=PositionGetTicket(i);
         //Alert(ticket);
         bool ret = trade.PositionClose(ticket);
       //  Alert("ret: ",ret,"\n","ticket: ", ticket);
      }
  }
  
   
   void ModifyPositions()
   {
      if(PositionsTotal() == 1)
      {
         PositionSelect(_Symbol);
         ulong ticket=PositionGetTicket(0);
         
         double BarClose[];
         CopyClose(_Symbol, _Period, 0, 10, BarClose); 
         ArraySetAsSeries(BarClose,true);
         double stopLossPrice = StopLossPoints * _Point;
         int PositionType = PositionGetInteger(POSITION_TYPE);
         Print("B1: ",BarClose[1]," B2: ",BarClose[2]);  
         Print("Modify: ", AT_Position_Type_ToString(PositionType));  
         if(PositionType == POSITION_TYPE_BUY)
         {
            if(BarClose[1] > BarClose[2])
            {
               double price=SymbolInfoDouble(_Symbol,SYMBOL_ASK);
               double SL = NormalizeDouble(price - stopLossPrice,_Digits);            
               trade.PositionModify(ticket, SL, 0);
            }
         }
         else
         {
            if(BarClose[1] < BarClose[2])
            {
               double price=SymbolInfoDouble(_Symbol,SYMBOL_BID);
               double SL = NormalizeDouble(price + stopLossPrice,_Digits);            
               trade.PositionModify(ticket, SL, 0);
            }
         }
      }
   }
   

   
