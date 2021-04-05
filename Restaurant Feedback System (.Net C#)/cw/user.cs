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
using System.IO;
using System.Text.RegularExpressions;

namespace cw
{
    public partial class user : Form
    {
        public class gridView
        {
            public string custName { get; set; }
            public string email { get; set; }
            public string number { get; set; }
            public string address { get; set; }
            public string genderCombo { get; set; }
            public DateTime datetime { get; set; } 
            public string Criteria { get; set; }
            public bool Excellent { get; set; }
            public bool Good { get; set; }
            public bool Average { get; set; }
            public bool Bad { get; set; }
            public bool Horrible { get; set; }
        }
        public user()
        {
            Thread t = new Thread(new ThreadStart(startForm));
            t.Start();
            Thread.Sleep(1000);
            t.Abort();
            InitializeComponent();
            panel1.BackColor = Color.FromArgb(40, Color.Black);
            panel2.BackColor = Color.FromArgb(40, Color.Black);
        }

        //Adding loading form
        public void startForm()
        {
            Application.Run(new loading());
        }

        public void loadCriteria()
        {
            foreach (string criteria in File.ReadAllLines("D:/criterias.txt"))
            {
                dataGridView1.Rows.Add(criteria); //adding criterias in datagridView table
            }
        }

        private void user_Load(object sender, EventArgs e) //loading criterias
        {
            loadCriteria();
        }
        private void clear() //clears all the fields
        {
            custName.Text = "";
            address.Text = "";
            email.Text = "";
            number.Text = "";
            genderCombo.SelectedItem = null;
            dataGridView1.DataSource = null;
            dataGridView1.Rows.Clear();
            loadCriteria();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click_1(object sender, EventArgs e)
        {

        }

        private void email_TextChanged(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void checkBox5_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void checkBox3_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void checkBox4_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void checkBox15_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void checkBox13_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void checkBox14_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void checkBox12_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void checkBox16_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void clearBtn_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(custName.Text) && string.IsNullOrWhiteSpace(address.Text) && string.IsNullOrWhiteSpace(number.Text) && string.IsNullOrWhiteSpace(email.Text) && genderCombo.SelectedItem == null)
            {
                MessageBox.Show("Field is already empty.", "Attention!",
                 MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                string message = "Do you want to clear all the entered details?";
                string title = "Clear All?";
                MessageBoxButtons buttons = MessageBoxButtons.OKCancel;
                DialogResult result = MessageBox.Show(message, title, buttons);
                if (result == DialogResult.OK)
                {
                    MessageBox.Show("Record Successfully cleared.");
                    clear();
                }
            }
        }

        private void exitBtn_Click(object sender, EventArgs e)
        {
            string message = "This will close the application. Are you sure?";
            string title = "Close?";
            MessageBoxButtons buttons = MessageBoxButtons.OKCancel;
            DialogResult result = MessageBox.Show(message, title, buttons);
            if (result == DialogResult.OK)
            {
                Application.Exit();
            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void dataGridView1_CellContentClick_1(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void label6_Click_1(object sender, EventArgs e)
        {

        }

        private void submitBtn_Click(object sender, EventArgs e)
        {
            //Validation
            if (string.IsNullOrWhiteSpace(custName.Text) || string.IsNullOrWhiteSpace(address.Text) || string.IsNullOrWhiteSpace(email.Text) || string.IsNullOrWhiteSpace(number.Text))
            {

                MessageBox.Show("Empty fields found!!");
            }
            else if (genderCombo.SelectedItem == null)
            {
                MessageBox.Show("Please select gender!");
            }
            else 
            {
                gridView val = null;
                string writedata = "";
                val = new gridView();
                if (Regex.IsMatch(custName.Text, @"^[A-Z][a-z]")) //validating only letters in name
                {
                    val.custName = custName.Text;
                    val.address = address.Text;
                    if (email.Text.ToString().LastIndexOf("@") > -1) //validating email
                    {
                        val.email = email.Text;
                        if (Regex.IsMatch(number.Text, @"[0-9]")) // validating email
                        {
                            val.number = number.Text;
                            val.datetime = datetime.Value;
                            val.genderCombo = genderCombo.Text.ToString();
                            writedata = custName.Text + ",";
                            writedata += address.Text + ",";
                            writedata += email.Text + ",";
                            writedata += number.Text + ",";
                            writedata += datetime.Value + ",";
                            writedata += genderCombo.Text.ToString();
                           
                            foreach (DataGridViewRow row in dataGridView1.Rows)
                            {
                                if (null != row.Cells["Criteria"].Value)
                                {
                                    //converting checkbox rating values into string
                                    string criteria = row.Cells["Criteria"].Value.ToString();
                                    string rating = "";
                                    if (Convert.ToString(row.Cells["Excellent"].Value) == "TRUE") { rating = "Excellent"; }
                                    if (Convert.ToString(row.Cells["Good"].Value) == "TRUE") { rating = "Good"; }
                                    if (Convert.ToString(row.Cells["Average"].Value) == "TRUE") { rating = "Average"; }
                                    if (Convert.ToString(row.Cells["Bad"].Value) == "TRUE") { rating = "Bad"; }
                                    if (Convert.ToString(row.Cells["Horrible"].Value) == "TRUE") { rating = "Horrible"; }
                                    writedata += "," + criteria + "," + rating;






                                }
                            }

                            using (StreamWriter sw = new StreamWriter(@"D:\read.csv", true))
                            {
                                sw.WriteLine(writedata);
                                clear();
                                MessageBox.Show("Thank you for the feedback!");
                            }

                        }
                        else { MessageBox.Show("Contact number cannot be text or symbol."); }
                    }
                    else { MessageBox.Show("Email should be in a format of abc@email.com"); }
                }
                else { MessageBox.Show("Customer Name cannot be number or symbol."); }
                

                
            }
            
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
           





        }

        private void dobPicker_ValueChanged(object sender, EventArgs e)
        {

        }
    }
    }
