//+------------------------------------------------------------------+
//|                                           PositionsRetTicket.mqh |
//|                                    Copyright 2020, ATStudija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, ATStudija IK."
#property link      "https://www.atstudija.id.lv"
#define EXPERT_MAGIC 20324249   // MagicNumber of the expert
//#include<Trade\Trade.mqh>
//CTrade trade;

ulong AA_OpenBuyRetResult(MqlTradeResult& res, double volume = 0.1, int stopLossPoints = 0, int takeProfitPoints = 0){
   //--- declare and initialize the trade request and result of trade request
   double sl = 0, tp = 0, stopLossPrice, takeProfitPrice;
   double price=SymbolInfoDouble(_Symbol,SYMBOL_ASK);
   if(stopLossPoints != 0){
      stopLossPrice = stopLossPoints * _Point;
      sl = NormalizeDouble(price - stopLossPrice,_Digits);
   }
   if(takeProfitPoints != 0){
      takeProfitPrice = takeProfitPoints * _Point;
      tp = NormalizeDouble(price + takeProfitPrice,_Digits);
   }
   
   MqlTradeRequest request={0};
   MqlTradeResult  result={0};
//--- parameters of request
   request.action   =TRADE_ACTION_DEAL;                     // type of trade operation
   request.symbol   =Symbol();                              // symbol
   request.volume   =volume;                                   // volume of 0.1 lot
   request.type     =ORDER_TYPE_BUY;                        // order type
   request.price    =price; // price for opening
   request.deviation=5;                                     // allowed deviation from the price
   request.magic    =EXPERT_MAGIC;                          // MagicNumber of the order
   request.sl       =sl;
   request.tp       =tp;                        
//--- send the request
   if(!OrderSend(request,result))
      PrintFormat("OrderSend error %d",GetLastError());     // if unable to send the request, output the error code
//--- information about the operation
   PrintFormat("retcode=%u  deal=%I64u  order=%I64u",result.retcode,result.deal,result.order);
   
   res=result;
   return result.order;
}

ulong AA_OpenSellRetResult(MqlTradeResult& res, double volume = 0.1, int stopLossPoints = 0, int takeProfitPoints = 0){
//--- declare and initialize the trade request and result of trade request
   double sl = 0,tp = 0, stopLossPrice, takeProfitPrice;
   double price=SymbolInfoDouble(_Symbol,SYMBOL_BID);
   if(stopLossPoints != 0){
      stopLossPrice = stopLossPoints * _Point;
      sl = NormalizeDouble(price + stopLossPrice,_Digits);
   }
   if(takeProfitPoints != 0){
      takeProfitPrice = takeProfitPoints * _Point;
      tp = NormalizeDouble(price - takeProfitPrice,_Digits);
   }
   
   MqlTradeRequest request={0};
   MqlTradeResult  result={0};
//--- parameters of request
   request.action   =TRADE_ACTION_DEAL;                     // type of trade operation
   request.symbol   =Symbol();                              // symbol
   request.volume   =volume;                                   // volume of 0.2 lot
   request.type     =ORDER_TYPE_SELL;                       // order type
   request.price    =price; // price for opening
   request.deviation=5;                                     // allowed deviation from the price
   request.magic    =EXPERT_MAGIC;                          // MagicNumber of the order
   request.sl =sl;
   request.tp =tp;
//--- send the request
   if(!OrderSend(request,result))
      PrintFormat("OrderSend error %d",GetLastError());     // if unable to send the request, output the error code
//--- information about the operation
   PrintFormat("retcode=%u  deal=%I64u  order=%I64u",result.retcode,result.deal,result.order);
   
   res=result;
   return result.order;
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