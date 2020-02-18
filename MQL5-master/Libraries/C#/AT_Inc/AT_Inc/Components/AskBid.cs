using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AT_Inc
{
    public partial class AskBid : UserControl
    {
        public AskBid()
        {
            InitializeComponent();
        }

        public void SetAskBidLabels(CData.Tmp[] rates)
        {
            this.label_ask.Text = rates[0].ask.ToString();
            this.label_bid.Text = rates[0].bid.ToString();
        }
    }
}
