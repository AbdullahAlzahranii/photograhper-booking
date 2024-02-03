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
    public partial class Login : System.Web.UI.Page
    {
        string coonntion = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
         
        protected void Page_Load(object sender, EventArgs e)
        {

        }
         
        protected void btn_Login_Click(object sender, EventArgs e)
        {
           LoginToUser(txt_Email.Text, txt_Password.Text);
           LoginToPhotographer(txt_Email.Text, txt_Password.Text);
           LoginToAdmin(txt_Email.Text, txt_Password.Text);
        }
        private void LoginToUser( string Email , string password)
        {
            Email = txt_Email.Text;
            password = txt_Password.Text;
            SqlConnection con = new SqlConnection(coonntion);
            con.Open();
            SqlCommand com = new SqlCommand("Select * from Customer2 where email=@email and Password=@Password ", con);
            
            com.Parameters.AddWithValue("@email", Email);
            com.Parameters.AddWithValue("@Password", password);
            if (com.ExecuteReader().HasRows)
            {
                Session["CustomerEmail"] = txt_Email.Text;
                Response.Redirect("~/Page/Home.aspx");
               
            }
            else
            {
                DisPlayMassage();   
            }
            con.Close();
        }
        private void LoginToPhotographer(string Email, string password)
        {
            Email = txt_Email.Text;
            password = txt_Password.Text;
            SqlConnection con = new SqlConnection(coonntion);
            SqlCommand commandOfphotographer = new SqlCommand("Select * from Photographer5 where email=@email and Password=@Password ", con);
            con.Open();
            commandOfphotographer.Parameters.AddWithValue("@email",Email);
            commandOfphotographer.Parameters.AddWithValue("@Password",password);
            if (commandOfphotographer.ExecuteReader().HasRows)
            {
                Session["PhotographerEmail"] = txt_Email.Text;
                Response.Redirect("~/Page/Home.aspx");
                con.Close();
            }
            else
            {
                DisPlayMassage();
            }
        }
        private void LoginToAdmin(string Email, string password)
        {
            Email = txt_Email.Text;
            password = txt_Password.Text;
            SqlConnection con = new SqlConnection(coonntion);
            SqlCommand com = new SqlCommand("Select * from admin where email=@email and Password=@Password ", con);
            con.Open();
            com.Parameters.AddWithValue("@email", Email);
            com.Parameters.AddWithValue("@Password", password);
            if (com.ExecuteReader().HasRows)
            {
                Session["Admin"] = txt_Email.Text;
                Response.Redirect("~/Page/Home.aspx");
                con.Close();
            }
            else
            {
                DisPlayMassage();
            }
        }
        private void DisPlayMassage()
        {
            Response.Write("");
        }
    }
}