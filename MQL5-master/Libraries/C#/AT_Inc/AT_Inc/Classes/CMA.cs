using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Threading;
using System.Threading.Tasks;

namespace AT_Inc
{
    public class CMA
    {
        public static BullBearMA MyForm;
        public static Thread Thread;
        public static void OpenForm()
        {
            if (MyForm == null)
            {
                MyForm = new BullBearMA();
                Thread = new Thread(() => Application.Run(MyForm));
                Thread.SetApartmentState(ApartmentState.STA);
                Thread.Start();
                Thread.Sleep(200);
            }
        }
        public static void SetArray()
        {
            
        }
        public static void GetArray()
        {

        }
    }
}
