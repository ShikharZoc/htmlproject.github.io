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
    public partial class bargraph : Form
    {
        public bargraph()
        {
            InitializeComponent();
        }
        //for getting and setting the attributes
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

        //set values of importcsv class in gridview
        public List<gridView> importCsv()
        {
            string csv = "D:\\read.csv";
            List<gridView> grids = new List<gridView> { };
            foreach (string line in File.ReadAllLines(csv))
            {
                string[] data = line.Split(',');
                gridView g = new gridView();
                g.custName = data[0];
                g.email = data[1];
                g.number = data[2];
                g.address = data[3];
                g.datetime = data[4];
                g.genderCombo = data[5];
                g.ratings = new Dictionary<string, string> { };
                for (int i = 6; i < data.Length; i += 2)
                {
                    g.ratings.Add(data[i], data[i + 1]);
                }
                grids.Add(g);
            }
            return grids;
        }

        //setting values of x and y using index values
        private void bargraph_Load(object sender, EventArgs e)
        {
            List<string> x = new List<string> { };
            List<int> y = new List<int> { };
            foreach (string criteria in File.ReadAllLines("D:/criterias.txt"))
            {
                x.Add(criteria); 
                y.Add(0);
            }
            foreach (gridView g in importCsv())
            {
                for (int i = 0; i < x.Count; i++)
                {
                    if (g.ratings.ContainsKey(x[i]))
                    {
                        if (g.ratings[x[i]] == "Excellent") { y[i] += 5; }
                        if (g.ratings[x[i]] == "Good") { y[i] += 4; }
                        if (g.ratings[x[i]] == "Average") { y[i] += 3; }
                        if (g.ratings[x[i]] == "Bad") { y[i] += 2; }
                        if (g.ratings[x[i]] == "Horrible") { y[i] += 1; }
                    }
                }
            }
            chart1.Series["Series1"].Points.DataBindXY(x, y);
        }
    }
}
