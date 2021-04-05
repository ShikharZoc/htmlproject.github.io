using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace cw
{
    public partial class Home : Form
    {
        public Home()
        {
            InitializeComponent();
            panel1.BackColor = Color.FromArgb(180, Color.Black); //setting rgb color for log in panel
        }

        private void Home_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void password_Click(object sender, EventArgs e)
        {

        }

        private void userName_TextChanged(object sender, EventArgs e)
        {

        }

        private void loginbtn_Click(object sender, EventArgs e)
        {

        }

        //adding username and password for admin and user and validating
        private void loginbtn_Click_1(object sender, EventArgs e)
        {
            String Username, Password;
            Username = userName.Text;
            Password = password.Text;
            if (string.IsNullOrWhiteSpace(Username) || string.IsNullOrWhiteSpace(Password)) { MessageBox.Show("Empty fields found!"); }
            else
            {
                if (Username == "admin" && Password == "admin")
                {
                    admin admin = new admin();
                    admin.Show();
                }
                else if (Username == "user" && Password == "user")
                {
                    user user = new user();
                    user.Show();
                }
                else { MessageBox.Show("Invalid username or password!"); }
            }
        }


        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click_1(object sender, EventArgs e)
        {

        }
    }
}