//+------------------------------------------------------------------+
//|                                            TC_BW_new_version.mq5 |
//|                                                         olyakish |
//|                                              http://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "olyakish"
#property link      "http://www.mql5.com"
#property version   "2.01"
#property description "Торговый эксперт по книге Билла Вильямса"
#property description "<Новые измерения в биржевой торговле;"
#property description "Как извлечь прибыль из хаоса: рынки акций, облигаций и фьючерсов.>"
// 

#include <h_TS_BW.mqh>
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+

input int alligator_jaw_period=13;        //Аллигатор: период линии челюстей
input int alligator_jaw_shift=8;          //Аллигатор: сдвиг линии челюстей
input int alligator_teeth_period=8;       //Аллигатор: период линии зубов
input int alligator_teeth_shift=5;        //Аллигатор: сдвиг линии зубов
input int alligator_lips_period=5;        //Аллигатор: период линии губ
input int alligator_lips_shift=3;         //Аллигатор: сдвиг линии губ
input bool add_1_dimension=true;  // Разрешить доливку по фракталам
input bool add_2_dimension_bludce=true;  // Разрешить доливку по сигналу "блюдце (АО)"
input bool add_2_dimension_cross_zero=true;  // Разрешить доливку по сигналу "пересечение нулевой линии (АО)"
input bool add_3_dimension_use_2_bars=true;  // Разрешить доливку по сигналу "покупка выше 0, продажа ниже 0" (АС 2 бара)
input bool add_3_dimension_use_3_bars=true;  // Разрешить доливку по сигналу "покупка ниже 0, продажа выше 0" (АС 3 бара)
input bool add_4_dimension_zone=true;  // Разрешить доливку по сигналам от красной или зеленой зон
input bool add_5_dimension=true;       // Разрешить доливку по сигналам от линии баланса
input int  max_4_dimension_zone=5;  // Максимальное количество подряд баров зон одного цвета
input bool trall_4_dimension=false;  // Разрешить тралл по 5 подряд барам зон одного цвета
input bool agress_trade_mm=false;  // Агрессивный стиль доливания в открытую позицию
input double lot=0.1;   // лот для торговли 
input type_support_position support_position=Not_used;  // Сопровождение стопа у позиции

C_TS_BW expert_TS_BW; // объект класса
s_input_parametrs input_parametrs;   // структура для передачи входных параметров в класс советника

int h_parabolic;//////--- хендл индикатора параболик для примера внешнего управления стоповой ценой у поцизии. 
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int OnInit()
  {
// копирование входящих параметров в структуру для передачи в класс советника
   input_parametrs.alligator_jaw_period=alligator_jaw_period;
   input_parametrs.alligator_jaw_shift=alligator_jaw_shift;
   input_parametrs.alligator_teeth_period=alligator_teeth_period;
   input_parametrs.alligator_teeth_shift= alligator_teeth_shift;
   input_parametrs.alligator_lips_period= alligator_lips_period;
   input_parametrs.alligator_lips_shift=alligator_lips_shift;
   input_parametrs.add_1_dimension=add_1_dimension;
   input_parametrs.add_2_dimension_bludce=add_2_dimension_bludce;
   input_parametrs.add_2_dimension_cross_zero=add_2_dimension_cross_zero;
   input_parametrs.add_3_dimension_use_2_bars=add_3_dimension_use_2_bars;
   input_parametrs.add_3_dimension_use_3_bars=add_3_dimension_use_3_bars;
   input_parametrs.add_4_dimension_zone=add_4_dimension_zone;
   input_parametrs.add_5_dimension=add_5_dimension;
   input_parametrs.max_4_dimension_zone=max_4_dimension_zone;
   input_parametrs.trall_4_dimension=trall_4_dimension;
   input_parametrs.agress_trade_mm=agress_trade_mm;
   input_parametrs.support_position=support_position;
   input_parametrs.lot=lot;

   expert_TS_BW.Init(Symbol(),PERIOD_CURRENT,input_parametrs);//инициализация класса эксперта
   expert_TS_BW.actual_action.init(); // инициализация текущей деятельности класса эксперта

   //h_parabolic=iSAR(Symbol(),PERIOD_CURRENT,0.02,0.2);

   return(0);
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//   double Sl[1];  

   if(expert_TS_BW.NewBar()) // на графике новый бар 
     {
      expert_TS_BW.CheckSignal();       // поиск сигналов
     }
   expert_TS_BW.CheckActionOnTick();     // проверка необходимых действий на текущем тике
//---******************* начало места внешнего управления лотом, стопом 
//--- пример установки лота для торголи по сигналам от зон

//   if(expert_TS_BW.actual_action.zone_buy || expert_TS_BW.actual_action.zone_sell)
//     {expert_TS_BW.CalcLot(true,0.11,0);}
//--- установка стопа по параболику

//   CopyBuffer(h_parabolic,0,0,1,Sl);
//   if (Sl[0]>0){expert_TS_BW.SetStopLoss(Sl[0]);}
//---*******************конец места внешнего управления лотом, стопом 

   expert_TS_BW.TrailingStop();           // подтягивание стопа (при необходимости)  
   
   expert_TS_BW.TradeActualSignals();     // торговля актуальных сигналов    

  }
//+------------------------------------------------------------------+
