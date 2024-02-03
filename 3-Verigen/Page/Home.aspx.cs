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
    public partial class Home : System.Web.UI.Page
    {
        string coonntion = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                SqlConnection connectio2n = new SqlConnection(coonntion);
                SqlDataAdapter dataAdapter = new SqlDataAdapter("Select * from Photographer5  inner join tab_Service3 on Photographer5.Email=tab_Service3.PhotographerEmail", connectio2n);

                DataSet ds = new DataSet();

                dataAdapter.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }

            if (DisplayEmailOfUser() == true)
            {
                DisplayEmailOfUser();
            }
            else if (Session["PhotographerEmail"] != null)
            {
                dsiplayPhotographer();
            }
            else if (Session["Admin"] != null)
            {
                dsiplayAdmin();
            }

        }
        private void dsiplayPhotographer()
        {
            lbl_DaiplayName.Text = $"Welcome {Session["PhotographerEmail"] }";
            ddl_Resrvation.Visible = false;
            btn_Login.Visible = false;
            ddl_Photographer.Visible = true;
            lbl_DaiplayName.Visible = true;
            btn_loginOut.Visible = true;

        }
        private void dsiplayAdmin()
        {
            ddl_Resrvation.Visible = false;
            btn_Login.Visible = false;
            ddl_Photographer.Visible = false;
            lbl_DaiplayName.Visible = true;
            btn_loginOut.Visible = true;
            ddl_Admin.Visible = true;
            lbl_DaiplayName.Text = $"Welcome admin";
        }


        private bool DisplayEmailOfUser()
        {
            bool done;
            if (Session["CustomerEmail"] != null)
            {
                lbl_DaiplayName.Text = $"Welcome {Session["CustomerEmail"] }";
                btn_Login.Visible = false;
                btn_loginOut.Visible = true;
                lbl_DaiplayName.Visible = true;
                done = true;
            }
            else
            {
                btn_Login.Visible = true;
                done = false;
            }
            return done;
        }

        protected void ddl_Resrvation_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_Resrvation.SelectedIndex == 1)
            {
                if (Session["CustomerEmail"] != null)
                {
                    Response.Redirect("~/Page/RE user.aspx");
                }
                else
                {
                    Response.Write(" <script > alert('Plases Sing in');</script>");
                }
            }
            else if (ddl_Resrvation.SelectedIndex == 2)
            {
                if (Session["CustomerEmail"] != null)
                {
                    Response.Redirect("~/Page/Add crdit casrd.aspx");
                }
                else
                {
                    Response.Write(" <script > alert('Plases Sing in');</script>");
                }
            }

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Add")
            {
                Session["id"] = e.CommandArgument.ToString();
                Response.Redirect("~/Page/prf photographer.aspx");
            }
        }

        protected void btn_Search_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection(coonntion);

            SqlDataAdapter dataAdapter = new SqlDataAdapter("Select * from Photographer5 where FirstName like '%" + txt_Search.Text + "%'", sqlConnection);

            DataSet dataset = new DataSet();

            dataAdapter.Fill(dataset);

            DataList1.DataSource = dataset;

            DataList1.DataBind();
        }

        protected void btn_Login_Click1(object sender, EventArgs e)
        {

            Response.Redirect("~/Page/Login.aspx");


        }

        protected void btn_loginOut_Click(object sender, EventArgs e)
        {
            
                LoginOutPhotographer();
                LoginOutUsser();
                LoginOutAdmin();
            ddl_Resrvation.Visible = true;
        }
        private void LoginOutUsser()
        {
            Session.Remove("CustomerEmail");
            Session.RemoveAll();
            btn_loginOut.Visible = false;
            lbl_DaiplayName.Visible = false;
            lbl_DaiplayName.Text = "";
            btn_Login.Visible = true;
        }
        private void LoginOutPhotographer()
        {
            Session.Remove("PhotographerEmail");
            Session.RemoveAll();
            ddl_Photographer.Visible = false;
            btn_loginOut.Visible = false;
            lbl_DaiplayName.Visible = false;
            lbl_DaiplayName.Text = "";
            btn_Login.Visible = true;
        }
        private void LoginOutAdmin()
        {
            Session.Remove("Admin");
            Session.RemoveAll();
            ddl_Admin.Visible = false;
            btn_loginOut.Visible = false;
            lbl_DaiplayName.Visible = false;
            lbl_DaiplayName.Text = "";
            btn_Login.Visible = true;
        }

        protected void ddl_Admin_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Session["Admin"] !=null)
            {
                if (ddl_Admin.SelectedIndex == 1)
                {
                    Response.Redirect("~/Page/AdminPage/Users.aspx");
                }
                else if (ddl_Admin.SelectedIndex == 2)
                {
                    Response.Redirect("~/Page/AdminPage/Photographers.aspx");
                }
                else if (ddl_Admin.SelectedIndex == 3)
                {
                    Response.Redirect("~/Page/AdminPage/Criedit Card.aspx");
                }
                else if (ddl_Admin.SelectedIndex == 4)
                {
                    Response.Redirect("~/Page/AdminPage/Experience.aspx");
                }
                else if (ddl_Admin.SelectedIndex == 5)
                {
                    Response.Redirect("~/Page/AdminPage/Photographer Tools.aspx");
                }
                else if (ddl_Admin.SelectedIndex == 6)
                {
                    Response.Redirect("~/Page/AdminPage/Service.aspx");
                }
                else if (ddl_Admin.SelectedIndex == 7)
                {
                    Response.Redirect("~/Page/AdminPage/PhotographerImage.aspx");
                }
                else if (ddl_Admin.SelectedIndex == 8)
                {
                    Response.Redirect("~/Page/AdminPage/Resrvation.aspx");
                }
            }
            else
            {
                ddl_Admin.Visible = false;
                ddl_Resrvation.Visible = true;
            }
             
        }

         
    }
}

   