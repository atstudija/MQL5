//+------------------------------------------------------------------+
//|                                                  AT_ShowInfo.mqh |
//|                                   Copyright 2019, AT-Studija IK. |
//|                                                      https://www |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, AT-Studija IK."
#property link      "https://www"

void ShowAccountInfoDouble()
   {
      double accountArrayDouble[];
      GetAccountInfoArrayDouble(accountArrayDouble);
      string text;
      StringConcatenate(text, "ACCOUNT_BALANCE: ", accountArrayDouble[0],"\n",
                              "ACCOUNT_CREDIT: ", accountArrayDouble[1],"\n",
                              "ACCOUNT_PROFIT: ", accountArrayDouble[2],"\n",
                              "ACCOUNT_EQUITY: ", accountArrayDouble[3],"\n",
                              "ACCOUNT_MARGIN: ", accountArrayDouble[4],"\n",
                              "ACCOUNT_MARGIN_FREE: ", accountArrayDouble[5],"\n",
                              "ACCOUNT_MARGIN_LEVEL: ", accountArrayDouble[6],"\n",
                              "ACCOUNT_MARGIN_SO_CALL: ", accountArrayDouble[7],"\n",
                              "ACCOUNT_MARGIN_SO_SO: ", accountArrayDouble[8],"\n",
                              "ACCOUNT_MARGIN_INITIAL: ", accountArrayDouble[9],"\n",
                              "ACCOUNT_MARGIN_MAINTENANCE: ", accountArrayDouble[10],"\n",
                              "ACCOUNT_ASSETS: ", accountArrayDouble[11],"\n",
                              "ACCOUNT_LIABILITIES: ", accountArrayDouble[12],"\n",
                              "ACCOUNT_COMMISSION_BLOCKED: ", accountArrayDouble[13],"\n");
      MessageBox(text);                              
   }