using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace cw
{

    public partial class admin : Form
    {
        private Form childForm;
        public admin()
        {
            Thread t = new Thread(new ThreadStart(loadingForm));
            t.Start();
            Thread.Sleep(500);
            t.Abort();
            InitializeComponent();
            pictureBox1.BackColor = Color.FromArgb(20, Color.White);
        }

        public void loadingForm()
        {
            Application.Run(new loading());
        }

        private void OpenChild(Form cForm)
        {
            if (childForm != null)
            {
                //open  only form
                childForm.Close();
            }
            childForm = cForm;
            cForm.FormBorderStyle = FormBorderStyle.None;
            childForm.TopLevel = false;
            childForm.Dock = DockStyle.Fill;
            panel2.Controls.Add(childForm);
            panel2.Tag = childForm;
            childForm.BringToFront();
            childForm.Show();

        }


        private void exitBtn_Click(object sender, EventArgs e)
        {
            string message = "This will close the application. Are you sure?";
            string title = "Close?";
            MessageBoxButtons buttons = MessageBoxButtons.OKCancel;
            DialogResult result = MessageBox.Show(message, title, buttons);
            if (result == DialogResult.OK)
            {
                //Retriving the value of the clicked rows id column
                Application.Exit();
            }
        }

        private void addCriteriaBtn_Click(object sender, EventArgs e)
        {
            OpenChild(new criteria());
        }

        private void button2_Click(object sender, EventArgs e)
        {
            OpenChild(new bargraph());
        }
        private void reportGenerateBtn_Click(object sender, EventArgs e)
        {
            OpenChild(new Report());
        }

        private void admin_Load(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
