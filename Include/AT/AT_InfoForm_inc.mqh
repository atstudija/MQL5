//+------------------------------------------------------------------+
//|                                                  AT_InfoForm.mqh |
//|                                   Copyright 2019, AT-Studija IK. |
//|                                                      https://www |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, AT-Studija IK."
#property link      "https://www"

void GetSymbolInfoArrayDouble(double& symbolArray[])
{
      ArrayResize(symbolArray,42);
      symbolArray[0] = SymbolInfoDouble(Symbol(),SYMBOL_BID);
      symbolArray[1] = SymbolInfoDouble(Symbol(),SYMBOL_BIDHIGH);
      symbolArray[2] = SymbolInfoDouble(Symbol(),SYMBOL_BIDLOW);
      symbolArray[3] = SymbolInfoDouble(Symbol(),SYMBOL_ASK);
      symbolArray[4] = SymbolInfoDouble(Symbol(),SYMBOL_ASKHIGH);
      symbolArray[5] = SymbolInfoDouble(Symbol(),SYMBOL_ASKLOW);
      symbolArray[6] = SymbolInfoDouble(Symbol(),SYMBOL_LAST);
      symbolArray[7] = SymbolInfoDouble(Symbol(),SYMBOL_LASTHIGH);
      symbolArray[8] = SymbolInfoDouble(Symbol(),SYMBOL_LASTLOW);
      symbolArray[9] = SymbolInfoDouble(Symbol(),SYMBOL_VOLUME_REAL);
      symbolArray[10] = SymbolInfoDouble(Symbol(),SYMBOL_VOLUMEHIGH_REAL);
      symbolArray[11] = SymbolInfoDouble(Symbol(),SYMBOL_VOLUMELOW_REAL);
      symbolArray[12] = SymbolInfoDouble(Symbol(),SYMBOL_OPTION_STRIKE);
      symbolArray[13] = SymbolInfoDouble(Symbol(),SYMBOL_POINT);
      symbolArray[14] = SymbolInfoDouble(Symbol(),SYMBOL_TRADE_TICK_VALUE);
      symbolArray[15] = SymbolInfoDouble(Symbol(),SYMBOL_TRADE_TICK_VALUE_PROFIT);
      symbolArray[16] = SymbolInfoDouble(Symbol(),SYMBOL_TRADE_TICK_VALUE_LOSS);
      symbolArray[17] = SymbolInfoDouble(Symbol(),SYMBOL_TRADE_TICK_SIZE);
      symbolArray[18] = SymbolInfoDouble(Symbol(),SYMBOL_TRADE_CONTRACT_SIZE);
      symbolArray[19] = SymbolInfoDouble(Symbol(),SYMBOL_TRADE_ACCRUED_INTEREST);
      symbolArray[20] = SymbolInfoDouble(Symbol(),SYMBOL_TRADE_FACE_VALUE);
      symbolArray[21] = SymbolInfoDouble(Symbol(),SYMBOL_TRADE_LIQUIDITY_RATE);
      symbolArray[22] = SymbolInfoDouble(Symbol(),SYMBOL_VOLUME_MIN);
      symbolArray[23] = SymbolInfoDouble(Symbol(),SYMBOL_VOLUME_MAX);
      symbolArray[24] = SymbolInfoDouble(Symbol(),SYMBOL_VOLUME_STEP);
      symbolArray[25] = SymbolInfoDouble(Symbol(),SYMBOL_VOLUME_LIMIT);
      symbolArray[26] = SymbolInfoDouble(Symbol(),SYMBOL_SWAP_LONG);
      symbolArray[27] = SymbolInfoDouble(Symbol(),SYMBOL_SWAP_SHORT);
      symbolArray[28] = SymbolInfoDouble(Symbol(),SYMBOL_MARGIN_INITIAL);
      symbolArray[29] = SymbolInfoDouble(Symbol(),SYMBOL_MARGIN_MAINTENANCE);
      symbolArray[30] = SymbolInfoDouble(Symbol(),SYMBOL_SESSION_VOLUME);
      symbolArray[31] = SymbolInfoDouble(Symbol(),SYMBOL_SESSION_TURNOVER);
      symbolArray[32] = SymbolInfoDouble(Symbol(),SYMBOL_SESSION_INTEREST);
      symbolArray[33] = SymbolInfoDouble(Symbol(),SYMBOL_SESSION_BUY_ORDERS_VOLUME);
      symbolArray[34] = SymbolInfoDouble(Symbol(),SYMBOL_SESSION_SELL_ORDERS_VOLUME);
      symbolArray[35] = SymbolInfoDouble(Symbol(),SYMBOL_SESSION_OPEN);
      symbolArray[36] = SymbolInfoDouble(Symbol(),SYMBOL_SESSION_CLOSE);
      symbolArray[37] = SymbolInfoDouble(Symbol(),SYMBOL_SESSION_AW);
      symbolArray[38] = SymbolInfoDouble(Symbol(),SYMBOL_SESSION_PRICE_SETTLEMENT);
      symbolArray[39] = SymbolInfoDouble(Symbol(),SYMBOL_SESSION_PRICE_LIMIT_MIN);
      symbolArray[40] = SymbolInfoDouble(Symbol(),SYMBOL_SESSION_PRICE_LIMIT_MAX);
      symbolArray[41] = SymbolInfoDouble(Symbol(),SYMBOL_MARGIN_HEDGED);
}

void GetAccountInfoArrayDouble(double& accountArray[])
{
   ArrayResize(accountArray,14);
   accountArray[0] = AccountInfoDouble(ACCOUNT_BALANCE);
   accountArray[1] = AccountInfoDouble(ACCOUNT_CREDIT);
   accountArray[2] = AccountInfoDouble(ACCOUNT_PROFIT);
   accountArray[3] = AccountInfoDouble(ACCOUNT_EQUITY);
   accountArray[4] = AccountInfoDouble(ACCOUNT_MARGIN);
   accountArray[5] = AccountInfoDouble(ACCOUNT_MARGIN_FREE);
   accountArray[6] = AccountInfoDouble(ACCOUNT_MARGIN_LEVEL);
   accountArray[7] = AccountInfoDouble(ACCOUNT_MARGIN_SO_CALL);
   accountArray[8] = AccountInfoDouble(ACCOUNT_MARGIN_SO_SO);
   accountArray[9] = AccountInfoDouble(ACCOUNT_MARGIN_INITIAL);
   accountArray[10] = AccountInfoDouble(ACCOUNT_MARGIN_MAINTENANCE);
   accountArray[11] = AccountInfoDouble(ACCOUNT_ASSETS);
   accountArray[12] = AccountInfoDouble(ACCOUNT_LIABILITIES);
   accountArray[13] = AccountInfoDouble(ACCOUNT_COMMISSION_BLOCKED);
}

void GetAccountInfoArrayString(string& accountArray[])
{
   ArrayResize(accountArray,4);
   accountArray[0] = AccountInfoString(ACCOUNT_NAME);
   accountArray[1] = AccountInfoString(ACCOUNT_SERVER);
   accountArray[2] = AccountInfoString(ACCOUNT_CURRENCY);
   accountArray[3] = AccountInfoString(ACCOUNT_COMPANY);
}

void GetAccountInfoArrayInteger(int& accountArray[])
{
   ArrayResize(accountArray,10);
   accountArray[0] = AccountInfoInteger(ACCOUNT_LOGIN);
   accountArray[1] = AccountInfoInteger(ACCOUNT_TRADE_MODE);
   accountArray[2] = AccountInfoInteger(ACCOUNT_LEVERAGE);
   accountArray[3] = AccountInfoInteger(ACCOUNT_LIMIT_ORDERS);
   accountArray[4] = AccountInfoInteger(ACCOUNT_MARGIN_SO_MODE);
   accountArray[5] = AccountInfoInteger(ACCOUNT_TRADE_ALLOWED);
   accountArray[6] = AccountInfoInteger(ACCOUNT_TRADE_EXPERT);
   accountArray[7] = AccountInfoInteger(ACCOUNT_MARGIN_MODE);
   accountArray[8] = AccountInfoInteger(ACCOUNT_CURRENCY_DIGITS);
   accountArray[9] = AccountInfoInteger(ACCOUNT_FIFO_CLOSE);
}