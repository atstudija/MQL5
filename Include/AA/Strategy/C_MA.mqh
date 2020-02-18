//+------------------------------------------------------------------+
//|                                                         C_MA.mqh |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."
#property link      "https://www.atstudija.id.lv"
#property version   "1.00"
class C_MA
  {
private:

public:
                     C_MA();
                    ~C_MA();
          int EMA(int ma_period, double& MA[]);          
                    
  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
C_MA::C_MA()
  {
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
C_MA::~C_MA()
  {
  }
//+------------------------------------------------------------------+
int C_MA::EMA(int ma_period = 13, double& MA[]){
     ArraySetAsSeries(MA ,true);
     CopyBuffer(iMA(_Symbol,_Period, ma_period, 0, MODE_EMA, PRICE_CLOSE), 0, 0, 100, MA);
     int diff;
     if(MA[2]== MA[1]){
          diff = 0;
     }
     if(MA[2] < MA[1]){
          diff = 1;
     }
     if(MA[2] > MA[1]){
          diff = -1;
     }
     
     return 0;
}
