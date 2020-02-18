using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AT_Lib
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }


        public void UpdateInfoData(string ask, string bid)
        {
            this.ask_data.Text = ask;
            this.bid_data.Text = bid;
        }

        private void MainForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            MainClass.HideMainForm();
        }
    }
}
