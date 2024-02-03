using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3_Verigen.Page
{
    public partial class RE_photographer : System.Web.UI.Page
    {
        string coonntion = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
              
              SqlConnection con = new SqlConnection(coonntion);
              con.Open();
              SqlDataAdapter sqlData = new SqlDataAdapter("Select * from Resrvetion where PhotographerEmail='" + Session["PhotographerEmail"] + "'", con);
              DataTable dataTable = new DataTable();

              sqlData.Fill(dataTable);
              GridView1.DataSource = dataTable;

              GridView1.DataBind();
              con.Close();
           
        }
 

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                SqlConnection con = new SqlConnection(coonntion);
             
                
                int ppp = Convert.ToInt32((sender as Button).CommandArgument);

                string Accpt = "Photographer Accpte";
                
                SqlCommand cmd = new SqlCommand("update Resrvetion set ResrvetionStates='" + Accpt + "' where Id='" + ppp + "'", con);

            con.Open();
            cmd.ExecuteNonQuery();
                con.Close();
           
             

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(coonntion);

           
            int ppp = Convert.ToInt32((sender as Button).CommandArgument);

            string Accpt = "Sorry donot";

            SqlCommand cmd = new SqlCommand("update Resrvetion set ResrvetionStates='" + Accpt + "' where Id='" + ppp + "'", con);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}