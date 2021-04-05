using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
namespace cw
{
    public partial class Report : Form
    {
        //for getting and setting values/attributes
        public class gridView
        {
            public string custName { get; set; }
            public string email { get; set; }
            public string number { get; set; }
            public string address { get; set; }
            public string genderCombo { get; set; }
            public string datetime { get; set; }
            public Dictionary<string, string> ratings { get; set; }
        }
        
        public Report()
        {
            InitializeComponent();
        }

        //reading criterias from text filen and reuturning it in string array
        private string[] getcriterias()
        {
            return File.ReadAllLines("D:/criterias.txt");
        }

        private void Feedback() 
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("DateTime");
            dt.Columns.Add("Customer Name");
            dt.Columns.Add("Gender");
            dt.Columns.Add("Address");
            dt.Columns.Add("Email");
            dt.Columns.Add("Contact Number");
            foreach (string Criteria in getcriterias()) 
            {
                dt.Columns.Add(Criteria);
            }
            foreach(gridView g in importCsv())
            {
                DataRow dr = dt.NewRow();
                dr["DateTime"] = g.datetime;
                dr["Customer Name"] = g.custName;
                dr["Gender"] = g.genderCombo;
                dr["Address"] = g.address;
                dr["Email"] = g.email;
                dr["Contact Number"] = g.number;
                foreach(string criteria in getcriterias())
                {
                    if( g.ratings.ContainsKey(criteria))
                    {
                        dr[criteria] = g.ratings[criteria];
                    }
                }
                dt.Rows.Add(dr);
            }
            dataGridView1.DataSource = dt;
        }

        //reading feedbacks from file and returning it as gridView list
         public List<gridView> importCsv()
         {
            string csv = "D:\\read.csv";
            List<gridView> grids = new List<gridView> { };
            foreach (string line in File.ReadAllLines(csv))
            {
                string[] data = line.Split(',');
                gridView g = new gridView();
                g.custName = data[0];
                g.address = data[1];
                g.email = data[2];
                g.number = data[3];
                g.datetime = data[4];
                g.genderCombo = data[5];
                g.ratings = new Dictionary<string, string> { }; //since criteria and its rating were in
                for (int i = 6; i < data.Length; i += 2)
                {
                    g.ratings.Add(data[i], data[i + 1]);
                }
                grids.Add(g);
            }
            return grids;
         }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }
        private void Report_Load(object sender, EventArgs e)
        {
            Feedback();
        }

       

    }
       
    
}
