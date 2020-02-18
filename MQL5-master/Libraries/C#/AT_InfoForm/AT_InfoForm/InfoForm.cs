using System.Windows.Forms;

namespace AT_InfoForm
{
    public partial class InfoForm : Form
    {
        public InfoForm()
        {
            InitializeComponent();
        }

        private void InfoForm_FormClosed(object sender, FormClosedEventArgs e)
        { 
            CInfoForm.CloseInfoForm();
        }
    }
}
