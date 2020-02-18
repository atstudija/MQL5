//+------------------------------------------------------------------+
//|                                            TC_BW_new_version.mq5 |
//|                                                         olyakish |
//|                                              http://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "olyakish"
#property link      "http://www.mql5.com"
#property version   "2.01"
#property description "�������� ������� �� ����� ����� ��������"
#property description "<����� ��������� � �������� ��������;"
#property description "��� ������� ������� �� �����: ����� �����, ��������� � ���������.>"
// 

#include <h_TS_BW.mqh>
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+

input int alligator_jaw_period=13;        //���������: ������ ����� ��������
input int alligator_jaw_shift=8;          //���������: ����� ����� ��������
input int alligator_teeth_period=8;       //���������: ������ ����� �����
input int alligator_teeth_shift=5;        //���������: ����� ����� �����
input int alligator_lips_period=5;        //���������: ������ ����� ���
input int alligator_lips_shift=3;         //���������: ����� ����� ���
input bool add_1_dimension=true;  // ��������� ������� �� ���������
input bool add_2_dimension_bludce=true;  // ��������� ������� �� ������� "������ (��)"
input bool add_2_dimension_cross_zero=true;  // ��������� ������� �� ������� "����������� ������� ����� (��)"
input bool add_3_dimension_use_2_bars=true;  // ��������� ������� �� ������� "������� ���� 0, ������� ���� 0" (�� 2 ����)
input bool add_3_dimension_use_3_bars=true;  // ��������� ������� �� ������� "������� ���� 0, ������� ���� 0" (�� 3 ����)
input bool add_4_dimension_zone=true;  // ��������� ������� �� �������� �� ������� ��� ������� ���
input bool add_5_dimension=true;       // ��������� ������� �� �������� �� ����� �������
input int  max_4_dimension_zone=5;  // ������������ ���������� ������ ����� ��� ������ �����
input bool trall_4_dimension=false;  // ��������� ����� �� 5 ������ ����� ��� ������ �����
input bool agress_trade_mm=false;  // ����������� ����� ��������� � �������� �������
input double lot=0.1;   // ��� ��� �������� 
input type_support_position support_position=Not_used;  // ������������� ����� � �������

C_TS_BW expert_TS_BW; // ������ ������
s_input_parametrs input_parametrs;   // ��������� ��� �������� ������� ���������� � ����� ���������

int h_parabolic;//////--- ����� ���������� ��������� ��� ������� �������� ���������� �������� ����� � �������. 
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int OnInit()
  {
// ����������� �������� ���������� � ��������� ��� �������� � ����� ���������
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

   expert_TS_BW.Init(Symbol(),PERIOD_CURRENT,input_parametrs);//������������� ������ ��������
   expert_TS_BW.actual_action.init(); // ������������� ������� ������������ ������ ��������

   //h_parabolic=iSAR(Symbol(),PERIOD_CURRENT,0.02,0.2);

   return(0);
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//   double Sl[1];  

   if(expert_TS_BW.NewBar()) // �� ������� ����� ��� 
     {
      expert_TS_BW.CheckSignal();       // ����� ��������
     }
   expert_TS_BW.CheckActionOnTick();     // �������� ����������� �������� �� ������� ����
//---******************* ������ ����� �������� ���������� �����, ������ 
//--- ������ ��������� ���� ��� ������� �� �������� �� ���

//   if(expert_TS_BW.actual_action.zone_buy || expert_TS_BW.actual_action.zone_sell)
//     {expert_TS_BW.CalcLot(true,0.11,0);}
//--- ��������� ����� �� ����������

//   CopyBuffer(h_parabolic,0,0,1,Sl);
//   if (Sl[0]>0){expert_TS_BW.SetStopLoss(Sl[0]);}
//---*******************����� ����� �������� ���������� �����, ������ 

   expert_TS_BW.TrailingStop();           // ������������ ����� (��� �������������)  
   
   expert_TS_BW.TradeActualSignals();     // �������� ���������� ��������    

  }
//+------------------------------------------------------------------+
