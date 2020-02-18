//+------------------------------------------------------------------+
//|                                             AT_Sidus_Include.mqh |
//|                                   Copyright 2019, AT-Studija IK. |
//|                                                      https://www |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, AT-Studija IK."
#property link      "https://www"


input double   Lot=1;
input double spreadLevel=5.0;

int OnCheckTradeInit(){
   //Check expert start on a real account  
   if((ENUM_ACCOUNT_TRADE_MODE)AccountInfoInteger(ACCOUNT_TRADE_MODE)==ACCOUNT_TRADE_MODE_REAL){  
      int mb=MessageBox("Run the advisor on a real account?","Message Box",MB_YESNO|MB_ICONQUESTION);      
      if(mb==IDNO) return(0);     
    } 
   //Checking: 
   //No connection to the server, prohibition of trade on the server side
   //The broker prohibits automatic trading
   
   if(!TerminalInfoInteger(TERMINAL_CONNECTED)){
      Alert("No connection to the trade server");
      return(0);
   }
   if(!AccountInfoInteger(ACCOUNT_TRADE_ALLOWED)){
      Alert("Trade for this account is prohibited");
      return(0);
   } 
   if(!AccountInfoInteger(ACCOUNT_TRADE_EXPERT)){
      Alert("Trade with the help of experts for the account is prohibited");
      return(0);
   }
   //Check the correctness of the volume with which we are going to enter the market
   if(Lot<SymbolInfoDouble(Symbol(),SYMBOL_VOLUME_MIN)||Lot>SymbolInfoDouble(Symbol(),SYMBOL_VOLUME_MAX)){ 
      Alert("Lot is not correct!!!");      
      return(0);
   }
   return(INIT_SUCCEEDED);
}

int OnCheckTradeTick(){
   //Check there is no connection to the server
   if(!TerminalInfoInteger(TERMINAL_CONNECTED)){
      Alert("No connection to the trade server");
      return(0);
   }
   //Is the auto-trade button on the client terminal enabled? 
   if (!TerminalInfoInteger(TERMINAL_TRADE_ALLOWED)){ 
      Alert("Auto Trade Permission Off!");
      return(0);
   }
   //Permission to trade with the help of an expert is disabled in the common properties of the expert itself.   
   if(!MQLInfoInteger(MQL_TRADE_ALLOWED)){
      Alert("Automatic trading is prohibited in the properties of the expert ",__FILE__);
      return(0);
   }
   //Margin level at which account replenishment is required
   if((ENUM_ACCOUNT_STOPOUT_MODE)AccountInfoInteger(ACCOUNT_MARGIN_SO_MODE)==ACCOUNT_STOPOUT_MODE_PERCENT){
   if(AccountInfoDouble(ACCOUNT_MARGIN_LEVEL)!=0&&AccountInfoDouble(ACCOUNT_MARGIN_LEVEL)
   <=AccountInfoDouble(ACCOUNT_MARGIN_SO_CALL)){
      Alert("Margin Call!!!");
      return(0);
   }} 
   if((ENUM_ACCOUNT_STOPOUT_MODE)AccountInfoInteger(ACCOUNT_MARGIN_SO_MODE)==ACCOUNT_STOPOUT_MODE_MONEY){
   if(AccountInfoDouble(ACCOUNT_EQUITY)<=AccountInfoDouble(ACCOUNT_MARGIN_SO_CALL)){
      Alert("Margin Call!!!"); 
      return(0); 
   }}
   //Margin level upon reaching which there is a forced closing of the most unprofitable position
   if((ENUM_ACCOUNT_STOPOUT_MODE)AccountInfoInteger(ACCOUNT_MARGIN_SO_MODE)==ACCOUNT_STOPOUT_MODE_PERCENT){
   if(AccountInfoDouble(ACCOUNT_MARGIN_LEVEL)!=0&&AccountInfoDouble(ACCOUNT_MARGIN_LEVEL)
   <=AccountInfoDouble(ACCOUNT_MARGIN_SO_SO)){
      Alert("Stop Out!!!");
      return(0);
   }} 
   if((ENUM_ACCOUNT_STOPOUT_MODE)AccountInfoInteger(ACCOUNT_MARGIN_SO_MODE)==ACCOUNT_STOPOUT_MODE_MONEY){
   if(AccountInfoDouble(ACCOUNT_EQUITY)<=AccountInfoDouble(ACCOUNT_MARGIN_SO_SO)){
      Alert("Stop Out!!!");
      return(0);
   }}
   //Checking the free funds volume on the account available for opening a position
   
   /*
    double margin;
    MqlTick last_tick;
    ResetLastError();
    if(SymbolInfoTick(Symbol(),last_tick))
      {            
      if(OrderCalcMargin(ORDER_TYPE_BUY,Symbol(),Lot,last_tick.ask,margin))
        {
            if(margin>AccountInfoDouble(ACCOUNT_MARGIN_FREE)){
               Alert("Not enough money in the account!");
               return(0);     
            }      
        }
      }
      else
        {
            Print(GetLastError());
        }
    */    
   //Broker spread control
   double _spread=SymbolInfoInteger(Symbol(),SYMBOL_SPREAD)*MathPow(10,-SymbolInfoInteger(Symbol(),SYMBOL_DIGITS))/MathPow(10,-4); 
   if(_spread>spreadLevel){
      Alert("Too big spread!");
      return(0);
   } 
   //Check of restrictions on trading operations on the symbol set by the broker
   if((ENUM_SYMBOL_TRADE_MODE)SymbolInfoInteger(Symbol(),SYMBOL_TRADE_MODE)!=SYMBOL_TRADE_MODE_FULL){
      Alert("Restrictions on trading operations!");
      return(0);
   }
   //Are there enough bars in the history to calculate the advisor
   if(Bars(Symbol(), 0)<100)  
   {
      Alert("In the chart little bars, Expert will not work!!");
      return(0);
   } 
      
   return(1);    
}