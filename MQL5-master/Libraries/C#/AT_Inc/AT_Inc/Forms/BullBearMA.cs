using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using RGiesecke.DllExport;
using System.Runtime.InteropServices;

namespace AT_Inc
{
    public partial class BullBearMA : Form
    {
        public BullBearMA()
        {
            InitializeComponent();
        }
      //  [DllExport("OpenForm", CallingConvention = CallingConvention.Cdecl)]
        public static void OpenForm(string msg)
        {
            MessageBox.Show(msg);
        }
    }
}
