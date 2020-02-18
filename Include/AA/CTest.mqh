//+------------------------------------------------------------------+
//|                                                        CTest.mqh |
//|                                   Copyright 2020, AT Studija IK. |
//|                                      https://www.atstudija.id.lv |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, AT Studija IK."
#property link      "https://www.atstudija.id.lv"


class C_MA
  {
protected:
   string            m_first_name;
   string            m_surname;
   datetime          m_birth;

public:
   //--- Constructor and destructor methods
                     C_MA(void);
                    ~C_MA(void);
   //--- Getter methods
   string            GetFirstName(void);
   string            GetSurname(void);
   datetime          GetBirth(void);
   //--- Setter methods
   void              SetFirstName(string first_name);
   void              SetSurname(string surname);
   void              SetBirth(datetime birth);
  };
//+------------------------------------------------------------------+
//| Constructor                                                      |
//+------------------------------------------------------------------+
C_MA::C_MA(void)
  {
//   Alert("Hello world! I am run when an object of type C_MA is created!");
  }
//+------------------------------------------------------------------+
//| Destructor                                                       |
//+------------------------------------------------------------------+
C_MA::~C_MA(void)
  {
 //  Alert("Goodbye world! I am run when the object is destroyed!");
  }
//+------------------------------------------------------------------+
//| GetFirstName                                                     |
//+------------------------------------------------------------------+
string C_MA::GetFirstName(void)
  {
   return m_first_name;
  }
//+------------------------------------------------------------------+
//| GetSurname                                                       |
//+------------------------------------------------------------------+
string C_MA::GetSurname(void)
  {
   return m_surname;
  }
//+------------------------------------------------------------------+
//| GetBirth                                                         |
//+------------------------------------------------------------------+
datetime C_MA::GetBirth(void)
  {
   return m_birth;
  }
//+------------------------------------------------------------------+
//| SetFirstName                                                     |
//+------------------------------------------------------------------+
void C_MA::SetFirstName(string first_name)
  {
   m_first_name=first_name;
  }
//+------------------------------------------------------------------+
//| SetSurname                                                       |
//+------------------------------------------------------------------+
void C_MA::SetSurname(string surname)
  {
   m_surname=surname;
  }
//+------------------------------------------------------------------+
//| SetBirth                                                         |
//+------------------------------------------------------------------+
void C_MA::SetBirth(datetime birth)
  {
   m_birth=birth;
  }
//+------------------------------------------------------------------+