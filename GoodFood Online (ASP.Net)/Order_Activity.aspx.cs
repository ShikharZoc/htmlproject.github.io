using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Order_Activity : System.Web.UI.Page
    {
        public string ConnectionString { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {


            string id = (customerDDL.SelectedValue.ToString());
            string year = (yearDDL.Text.ToString());
            string month = (monthDDL.Text.ToString());
            if (id.Length == 0 || year.Length == 0 || month.Length == 0)
            {
                id = "0";
                year = "0";
                month = "0";

            }

            String queryString = $" select r.restaurant_name, count(r.restaurant_name) as total_dish_ordered from(((( orderregister ore join orderdetails od on ore.sn = od.sn) join dish d on d.dishcode = od.dishcode) join restaurant r on r.restaurant_id = od.restaurantid) join customer_details c on c.customer_id = od.customerid) where extract(year from ore.datetime) = '{year}' AND extract(month from ore.datetime) = '{month}' AND c.customer_id = '{id}' group by r.restaurant_name order by count(r.restaurant_name)DESC";
            String connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            OracleCommand cmd = new OracleCommand();
            OracleConnection con = new OracleConnection(connectionString);
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = queryString;
            cmd.CommandType = CommandType.Text;
            DataTable dt = new DataTable();
            using (OracleDataReader sdr = cmd.ExecuteReader())
            {
                dt.Load(sdr);
            }
            con.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}