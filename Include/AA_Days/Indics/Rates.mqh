//+------------------------------------------------------------------+
//|                                                        rates.mqh |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."
#property link      "https://www.atstudija.id.lv"

double C(int diff = 0){
     double CLOSE[];
     ArraySetAsSeries(CLOSE, true);
     CopyClose(_Symbol,_Period, diff, 1, CLOSE);
     return(CLOSE[0]);
}

double O(int diff = 0){
     double OPEN[];
     ArraySetAsSeries(OPEN, true);
     CopyOpen(_Symbol,_Period, diff, 1, OPEN);
     return(OPEN[0]);
}

double H(int diff = 0){
     double HIGH[];
     ArraySetAsSeries(HIGH, true);
     CopyHigh(_Symbol,_Period, diff, 1, HIGH);
     return(HIGH[0]);
}

double L(int diff = 0){
     double LOW[];
     ArraySetAsSeries(LOW, true);
     CopyLow(_Symbol,_Period, diff, 1, LOW);
     return(LOW[0]);
}
datetime T(int diff = 0){
     datetime TIME[];
     ArraySetAsSeries(TIME, true);
     CopyTime(_Symbol,_Period, diff, 1, TIME);
     return(TIME[0]);
}

long RV(int diff = 0){
     long RV[];
     ArraySetAsSeries(RV, true);
     CopyRealVolume(_Symbol,_Period, diff, 1, RV);
     return(RV[0]);
}

long TV(int diff = 0){
     long TV[];
     ArraySetAsSeries(TV, true);
     CopyTickVolume(_Symbol,_Period, diff, 1, TV);
     return(TV[0]);
}

int S(int diff = 0){
     int S[];
     ArraySetAsSeries(S, true);
     CopySpread(_Symbol,_Period, diff, 1, S);
     return(S[0]);
}