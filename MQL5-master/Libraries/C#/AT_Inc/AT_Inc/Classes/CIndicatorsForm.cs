using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AT_Inc.Forms
{
    public partial class IndicatorsForm
    {
        public static void IndForm()
        {
            
        }
        private void upd()
        {
            this.textBoxAsk.Text = "ASk";
            this.textBoxBid.Text = "Bid";
        }
/*                                               
        public static IndicatorsForm MyForm;
        public static Thread Thread;
        public static void OpenForm()
        {
            if (MyForm == null)
            {
                MyForm = new IndicatorsForm();
                Thread = new Thread(() => Application.Run(MyForm));
                Thread.SetApartmentState(ApartmentState.STA);
                Thread.Start();
                Thread.Sleep(200);
            }
        } 
        */
    }
}
