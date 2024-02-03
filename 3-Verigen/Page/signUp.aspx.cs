using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace _3_Verigen.Page
{
    public partial class signUp : System.Web.UI.Page
    {
        string coonntion = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
       
        private void SignUp(string FirstName, string LastName, string Email,string addrres,string Gender,string Phoen_Number, string Password)
        {
            SqlConnection connectionOfDatabases = new SqlConnection(coonntion);
            if (FirstName != null && LastName != null && Email != null && addrres != null && Gender != null  && Password != null)
            {

               SqlCommand commandOfUser = new SqlCommand("select * from Customer2 where email=@email ", connectionOfDatabases);
          
                connectionOfDatabases.Open();
                commandOfUser.Parameters.AddWithValue("@email", Email);
             
                SqlDataReader sdr = commandOfUser.ExecuteReader();
                bool chk = sdr.HasRows;
                if (chk != false)
                {
                    Response.Write(" <script > alert('?You have Account go to login page');</script>");
                    connectionOfDatabases.Close();
                }
                else
                {
                    connectionOfDatabases.Close();
                    string insertInto = "insert into Customer2 values(@FirstName, @LastName, @email, @addrres, @Gender, @Phoen_Number, @Password)";
                    SqlCommand commandOfUserInsert = new SqlCommand(insertInto, connectionOfDatabases);
                    commandOfUserInsert.Parameters.AddWithValue("@FirstName", FirstName);
                    commandOfUserInsert.Parameters.AddWithValue("@LastName", LastName);
                    commandOfUserInsert.Parameters.AddWithValue("@email", Email);
                    commandOfUserInsert.Parameters.AddWithValue("@addrres", addrres);
                    commandOfUserInsert.Parameters.AddWithValue("@Gender", Gender);
                    commandOfUserInsert.Parameters.AddWithValue("@Phoen_Number", Phoen_Number);
                    commandOfUserInsert.Parameters.AddWithValue("@Password", Password);
                    connectionOfDatabases.Open();
                    commandOfUserInsert.ExecuteNonQuery();
                    connectionOfDatabases.Close();

                    Response.Redirect("~/Page/Login.aspx");

                }
            }
            else
            {
                Response.Write(" <script > alert('?Your information is nucorrect');</script>");
            }

        }
        private void SignUpOFphotographer(string FirstName, string LastName, string Email, string addrres, string Gender, string Phoen_Number, string Password)
        {
            SqlConnection connectionOfPhotographer = new SqlConnection(coonntion);
            if (FirstName != null && LastName != null && Email != null && addrres != null && Gender != null && Password != null)
            {
              
                SqlCommand commandOfUser = new SqlCommand("select * from Photographer5 where Email=@email ", connectionOfPhotographer);
                connectionOfPhotographer.Open();
                commandOfUser.Parameters.AddWithValue("@email", Email);
                SqlDataReader sdr = commandOfUser.ExecuteReader();
                bool chk = sdr.HasRows;
                if (chk != false)
                {
                    Response.Write(" <script > alert('?You have Account go to login page');</script>");
                    connectionOfPhotographer.Close();
                }
                else
                {
                    connectionOfPhotographer.Close();
                    string insertInto = "insert into Photographer5(FirstName,LastName,Email,addrres,Gender,Phoen_Number,Password) values(@FirstName, @LastName, @email, @addrres, @Gender, @Phoen_Number, @Password)";
                    SqlCommand commandOfPhotogtrapherInsert = new SqlCommand(insertInto, connectionOfPhotographer);
                    Session["Email"]=txt_Email.Text;
                    commandOfPhotogtrapherInsert.Parameters.AddWithValue("@FirstName", FirstName);
                    commandOfPhotogtrapherInsert.Parameters.AddWithValue("@LastName", LastName);
                    commandOfPhotogtrapherInsert.Parameters.AddWithValue("@email", Email);
                    commandOfPhotogtrapherInsert.Parameters.AddWithValue("@addrres", addrres);
                    commandOfPhotogtrapherInsert.Parameters.AddWithValue("@Gender", Gender);
                    commandOfPhotogtrapherInsert.Parameters.AddWithValue("@Phoen_Number", Phoen_Number);
                    commandOfPhotogtrapherInsert.Parameters.AddWithValue("@Password", Password);
                    connectionOfPhotographer.Open();
                    commandOfPhotogtrapherInsert.ExecuteNonQuery();
                    connectionOfPhotographer.Close();
                    Response.Redirect("~/Page/Sing Up of photographer.aspx");
                }
            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(coonntion);
            SqlCommand comm = new SqlCommand("select * from Customer2 where email=@email ",con);    
            con.Open();
            comm.Parameters.AddWithValue("@email", txt_Email.Text);
            SqlDataReader sdr = comm.ExecuteReader();         
            bool chk = sdr.HasRows;
            con.Close();
                if (chk != false )
                {

                    Response.Write(" <script > alert('?You have Account go to login page');</script>");
                    con.Close();
                }
                else
                {
    
                  if (chk_AcceptPhotographer.Checked == true)
                  {
                    SignUpOFphotographer(txt_FirstName.Text.Trim(), txt_LastName.Text.Trim(), txt_Email.Text.Trim(), ddl_Region.Text.Trim()
                        + "/" + DDL_City.Text, ddl_Gender.Text.Trim(), txt_PhoneNumber.Text.Trim(), txt_Password.Text.Trim());
                  }
                  else
                   {
                   
                    SignUp(txt_FirstName.Text.Trim(), txt_LastName.Text.Trim(), txt_Email.Text.Trim(), ddl_Region.Text.Trim()
                        + "/" + DDL_City.Text, ddl_Gender.Text.Trim(), txt_PhoneNumber.Text.Trim(), txt_Password.Text.Trim());
                   }
                         
                }
        }

        protected void ddl_Region_SelectedIndexChanged(object sender, EventArgs e)
        {
            bool CheckedDrowpdawnList = ddl_Region.SelectedItem.Selected;
            if(CheckedDrowpdawnList == true)
            {
                DDL_City.Visible = true;
                lbl_City.Visible = true;
            }
        }
    }
}