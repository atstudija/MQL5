//+------------------------------------------------------------------+
//|                                                        Rates.mqh |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."
#property link      "https://www.atstudija.id.lv"

double CLOSE(int diff = 0){
     double CLOSE[];
     ArraySetAsSeries(CLOSE, true);
     CopyClose(_Symbol,_Period, diff, 1, CLOSE);
     return(CLOSE[0]);
}

double OPEN(int diff = 0){
     double OPEN[];
     ArraySetAsSeries(OPEN, true);
     CopyOpen(_Symbol,_Period, diff, 1, OPEN);
     return(OPEN[0]);
}

double HIGH(int diff = 0){
     double HIGH[];
     ArraySetAsSeries(HIGH, true);
     CopyHigh(_Symbol,_Period, diff, 1, HIGH);
     return(HIGH[0]);
}

double LOW(int diff = 0){
     double LOW[];
     ArraySetAsSeries(LOW, true);
     CopyLow(_Symbol,_Period, diff, 1, LOW);
     return(LOW[0]);
}

datetime TIME(int diff = 0){
     datetime TIME[];
     ArraySetAsSeries(TIME, true);
     CopyTime(_Symbol,_Period, diff, 1, TIME);
     return(TIME[0]);
}

long REALVOLUME(int diff = 0){
     long REALVOLUME[];
     ArraySetAsSeries(REALVOLUME, true);
     CopyRealVolume(_Symbol,_Period, diff, 1, REALVOLUME);
     return(REALVOLUME[0]);
}

long TICKVOLUME(int diff = 0){
     long TICKVOLUME[];
     ArraySetAsSeries(TICKVOLUME, true);
     CopyTickVolume(_Symbol,_Period, diff, 1, TICKVOLUME);
     return(TICKVOLUME[0]);
}

int SPREAD(int diff = 0){
     int SPREAD[];
     ArraySetAsSeries(SPREAD, true);
     CopySpread(_Symbol,_Period, diff, 1, SPREAD);
     return(SPREAD[0]);
}
