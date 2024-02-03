using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3_Verigen.Page
{
    public partial class Add_crdit_casrd : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                SqlCommand com = new SqlCommand("insert into Criedit_Card2 (Card_Name,Card_Number,SVS,CustomerEmail) values (@Card_Name,@Card_Number,@SVS,'" +  Session["CustomerEmail"] + "')", connection);
                com.Parameters.AddWithValue("@Card_Name", txt_CardName.Text);
                com.Parameters.AddWithValue("@Card_Number", txt_CardNumber.Text);
                com.Parameters.AddWithValue("@SVS", txt_Svs.Text);
                com.ExecuteNonQuery();
                connection.Close();
                Response.Redirect("~/Page/Home.aspx");
            }
            catch(Exception f)
            {
                Response.Write($" <script > alert('Plases try other time {f} ');</script>");
            }
           
        }
    }
}