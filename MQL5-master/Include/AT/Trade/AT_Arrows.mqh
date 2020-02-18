

void BuyArrow(){
   datetime time = iTime(_Symbol,_Period,0);
   double low = iHigh(_Symbol,_Period,0);
   string name = "ST_up_" + TimeToString(time);

	ObjectCreate(0, name, OBJ_ARROW, 0, time, low - (3 * _Point));
	ObjectSetInteger(0, name, OBJPROP_ARROWCODE, 233);
	ObjectSetInteger(0, name, OBJPROP_COLOR, clrBlue);
	ObjectSetInteger(0, name, OBJPROP_SELECTABLE, false);
}

void SellArrow(){
   datetime time = iTime(_Symbol,_Period,0);
   double high = iHigh(_Symbol,_Period,0);
   string name = "ST_down_" + TimeToString(time);

	ObjectCreate(0, name, OBJ_ARROW, 0, time, high + (5 * _Point));
	ObjectSetInteger(0, name, OBJPROP_ARROWCODE, 234);
	ObjectSetInteger(0, name, OBJPROP_COLOR, clrRed);
	ObjectSetInteger(0, name, OBJPROP_SELECTABLE, false);
}

void BuyStopArrow(){
   datetime time = iTime(_Symbol,_Period,0);
   double low = iHigh(_Symbol,_Period,0);
   string name = "ST_up_stop" + TimeToString(time);

	ObjectCreate(0, name, OBJ_ARROW, 0, time, low - (3 * _Point));
	ObjectSetInteger(0, name, OBJPROP_ARROWCODE, 251);
	ObjectSetInteger(0, name, OBJPROP_COLOR, clrBlue);
	ObjectSetInteger(0, name, OBJPROP_SELECTABLE, false);
}

void SellStopArrow(){
   datetime time = iTime(_Symbol,_Period,0);
   double high = iHigh(_Symbol,_Period,0);
   string name = "ST_down_stop" + TimeToString(time);

	ObjectCreate(0, name, OBJ_ARROW, 0, time, high + (5 * _Point));
	ObjectSetInteger(0, name, OBJPROP_ARROWCODE, 251);
	ObjectSetInteger(0, name, OBJPROP_COLOR, clrRed);
	ObjectSetInteger(0, name, OBJPROP_SELECTABLE, false);
}