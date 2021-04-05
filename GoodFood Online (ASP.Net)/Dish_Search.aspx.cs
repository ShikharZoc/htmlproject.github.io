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
    public partial class Dish_Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = (dishDDL.SelectedValue.ToString());

            String queryString = $" select dish.dishname, restaurant.restaurant_name,restaurantdish.dishrate from dish join restaurantdish on dish.dishcode = restaurantdish.dishcode join restaurant on restaurant.restaurant_id = restaurantdish.restaurantid where dish.dishcode = '{id}'";

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