//+------------------------------------------------------------------+
//|                                                        Cross.mqh |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."
#property link      "https://www.atstudija.id.lv"

int LWMA5XSMA10(){
          double LWMA[];;
          ArraySetAsSeries(LWMA, true);
          CopyBuffer(iMA(_Symbol,_Period, 5, 0, MODE_LWMA, PRICE_CLOSE), 0, 0, 100, LWMA);
          double SMA[];
          ArraySetAsSeries(SMA, true);
          CopyBuffer(iMA(_Symbol,_Period, 10, 0, MODE_SMA, PRICE_CLOSE), 0, 0, 100, SMA);
          int ret = 0;
          for(int i=0; i<100; i++)
            {

                  if((LWMA[i] > SMA[i]) && (LWMA[i + 1]  < SMA[i + 1])){
                    ret = i;
                    break;
                  }
                  if((LWMA[i] < SMA[i]) && (LWMA[i + 1]  > SMA[i + 1])){
                    ret = (-i);
                    break;
                  }
            };
          return(ret);
}

int STOCH(){
          double STOCH[];;
          ArraySetAsSeries(STOCH, true);
          CopyBuffer( iStochastic(_Symbol,_Period,5,3,3,MODE_SMA,STO_LOWHIGH), 0, 0, 100, STOCH);
          double SIGNAL[];;
          ArraySetAsSeries(SIGNAL, true);
          CopyBuffer( iStochastic(_Symbol,_Period,5,3,3,MODE_SMA,STO_LOWHIGH), 1, 0, 100, SIGNAL);
          int ret = 0;
          for(int i=0; i<100; i++)
            {

                  if((STOCH[i] > SIGNAL[i]) && (STOCH[i + 1]  < SIGNAL[i + 1])){
                    ret = i;
                    break;
                  }
                  if((STOCH[i] < SIGNAL[i]) && (STOCH[i + 1]  > SIGNAL[i + 1])){
                    ret = (-i);
                    break;
                  }
            };
          return(ret);

}

double RSI(){
          double RSI[];
          ArraySetAsSeries(RSI, true);
          CopyBuffer(iRSI(_Symbol,_Period,14,PRICE_CLOSE),0,0,100,RSI);
          return(RSI[0]);
}

double MACD_M(){
          double MACD[];
          ArraySetAsSeries(MACD, true);
          CopyBuffer(iMACD(_Symbol,_Period,12,26,9,PRICE_CLOSE),0,0,100,MACD);
          double SIGNAL[];
          ArraySetAsSeries(SIGNAL, true);
          CopyBuffer(iMACD(_Symbol,_Period,12,26,9,PRICE_CLOSE),1,0,100,SIGNAL);
          return(MACD[0]);
}


double MACD_S(){
          double MACD[];
          ArraySetAsSeries(MACD, true);
          CopyBuffer(iMACD(_Symbol,_Period,12,26,9,PRICE_CLOSE),0,0,100,MACD);
          double SIGNAL[];
          ArraySetAsSeries(SIGNAL, true);
          CopyBuffer(iMACD(_Symbol,_Period,12,26,9,PRICE_CLOSE),1,0,100,SIGNAL);
          return(SIGNAL[0]);
}

double ATR(int period = 5){
          double ATR[];
          ArraySetAsSeries(ATR, true);
          CopyBuffer(iATR(_Symbol,_Period,period),0,0,100,ATR);
          return(ATR[0]);
}