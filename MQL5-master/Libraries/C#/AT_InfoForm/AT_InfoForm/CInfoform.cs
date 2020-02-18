using System;
using System.Windows.Forms;
using System.Threading;
namespace AT_InfoForm
{
    public partial class CInfoForm
    {
        public static InfoForm MyForm;
        public static Thread Thread;
        public static void ShowInfoForm()
        {
            if (MyForm == null)
            {
                MyForm = new InfoForm();
                Thread = new Thread(() => Application.Run(MyForm));
                Thread.SetApartmentState(ApartmentState.STA);
                Thread.Start();
                Thread.Sleep(200);
                //UpdateSymbolInfoDouble();

            }
        }

        public static void CloseInfoForm()
        {
            if (MyForm != null)
            {
                MyForm = null;
            }
        }
    }
}