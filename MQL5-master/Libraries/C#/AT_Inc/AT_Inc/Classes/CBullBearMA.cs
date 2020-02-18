using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Threading;

namespace AT_Inc
{
    class CBullBearMA
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
    }
}
