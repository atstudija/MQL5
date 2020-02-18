using System.Windows.Forms;

namespace AT_InfoForm
{
    
    public partial class CInfoForm
    {
        //double[] SymbolArray;
        public static void SetSymbolTnfoDouble(double[] symbolArrayDouble)
        {
            if (MyForm != null)
            {
                MyForm.AA_UpdateSymbolFormDouble(symbolArrayDouble);
            }
        }

        public static void SetAccountInfoString(string[] accountArrayString)
        {
            if (MyForm != null)
            {
                MyForm.AA_UpdateAccountFormString(accountArrayString);
            }
        }

        public static void SetAccountInfoDouble(double[] accountArrayDouble)
        {
            if (MyForm != null)
            {
                MyForm.AA_UpdateAccountFormDouble(accountArrayDouble);
            }
        }
        public static void SetInfoFormLabels(string[] accountArrayString,
                                             double[] accountArrayDouble,
                                             int[] accountArrayInteger)
        {

        }
    }
}