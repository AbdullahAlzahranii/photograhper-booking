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
    public partial class Forget_Password : System.Web.UI.Page
    {
        string coonntion = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Forget_Click(object sender, EventArgs e)
        {
            
            if (CheckUser() == true)
            {
                CheckUser();
            }
            else
            {
                CheckPhotographer();
            }
        }
        private bool CheckUser()
        {
            bool User;
            SqlConnection connectio2n = new SqlConnection(coonntion);
            SqlCommand commandOfUser = new SqlCommand("select * from Customer2 where email=@email ", connectio2n);

            connectio2n.Open();
            commandOfUser.Parameters.AddWithValue("@email", txt_Email.Text);

            SqlDataReader sdr = commandOfUser.ExecuteReader();
            bool chk = sdr.HasRows;
            if (chk != false)
            {
                 
                UpdateUserPassword();
                connectio2n.Close();
                return User = true;
            }
            else
            {
                lbl_Message.Visible = true;
                lbl_Message.Text = "You do not have account Plases Sgin Up";
                Response.Write("<script>alert('?You Do'not have account ');</script>");
                connectio2n.Close();
                return User = false;
            }
        }
        private void UpdateUserPassword()
        {
            SqlConnection sql = new SqlConnection(coonntion);
            SqlCommand sqlCommand = new SqlCommand("update Customer2 set Password = '" + txt_Password.Text + "' where email = '" + txt_Email.Text + "'", sql);
            sql.Open();
            sqlCommand.ExecuteNonQuery();
            sql.Close();
            Response.Redirect("~/Page/Login.aspx");
        }
        private void CheckPhotographer()
        {
              SqlConnection connection = new SqlConnection(coonntion);
              SqlCommand commandOfPhotographer = new SqlCommand("select * from Photographer5 where Email=@email ", connection);

            connection.Open();
            commandOfPhotographer.Parameters.AddWithValue("@email", txt_Email.Text);

              SqlDataReader sdr = commandOfPhotographer.ExecuteReader();
              bool chk = sdr.HasRows;
              if (chk != false)
              {
                UpdatePhotographerPassword();
                connection.Close();

              }
              else
              {
                lbl_Message.Visible = true;
                lbl_Message.Text = "You do not have account Plases Sgin Up";
              }
        }
        private void UpdatePhotographerPassword()
        {
            SqlConnection sql = new SqlConnection(coonntion);
            SqlCommand sqlCommand = new SqlCommand("update Photographer5 set Password = '" + txt_Password.Text + "' where Email = '" + txt_Email.Text + "'", sql);
            sql.Open();
            sqlCommand.ExecuteNonQuery();
            sql.Close();
            Response.Redirect("~/Page/Login.aspx");
        }
    }
}