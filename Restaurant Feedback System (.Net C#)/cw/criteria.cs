using System;
using System.IO;
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
    public partial class criteria : Form
    {
        public criteria()
        {
            InitializeComponent();
        }

        private void addBtn_Click(object sender, EventArgs e)
        {
            string newcriteria = textBox1.Text;
            File.AppendAllText("D:/criterias.txt", newcriteria + "\n");
            loadtable();
            textBox1.Text = "";
            MessageBox.Show("New criteria added successfully!");

        }

        //reading criteria from file
        private string[] getcriterias()
        {
            return File.ReadAllLines("D:/criterias.txt");
        }

        private void criteria_Load(object sender, EventArgs e)
        {
            loadtable();
            
        }

        //populating table with criterias
        private void loadtable()
        {
            DataTable table = new DataTable();


            table.Columns.Add("Food Criteria", typeof(string));

            foreach (string criteria in getcriterias())
            {
                table.Rows.Add(criteria);
            }
            dataGridView.DataSource = table;
        }

        //for removing criterias
        private void dataGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridView dg = (DataGridView)sender;
            if (dg.Columns[e.ColumnIndex] is DataGridViewButtonColumn && e.RowIndex >= 0)
            {
                List<string> criterias = getcriterias().ToList();
                criterias.RemoveAt(e.RowIndex);
                File.WriteAllLines("D:/criterias.txt", criterias); //full overwrite
                loadtable();
            }
        }
    }
}
