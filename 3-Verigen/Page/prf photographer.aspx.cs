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
    public partial class prf_photographer : System.Web.UI.Page
    {


        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (rio_CahngeAddress.Checked)
            {
                btn(true);
            }
            else if (rio_DoNotCahngeAddress.Checked)
            {
                btn(false);
            }

            if (!IsPostBack)
            {
                if(Session["CustomerEmail"] !=null || Session["Admin"] != null|| Session["PhotographerEmail"] != null)
                {
                    PhotographerInformation();
                    PhotographerImage();
                    PhotographerTools();
                    Experience();
                    tab_Service3();
                    CustomerInFO();
                     DisplayCommment();
                   Session["Ad"] = Session["address"].ToString(); ;

                
                }
                 else
                    {
                      Response.Redirect("~/Page/Home.aspx");
                    }

            }
        }
        private void PhotographerInformation()
        {

                                                 
            SqlCommand com = new SqlCommand("select * from Photographer5 where Email ='" + Session["id"] + "'", connection);

            com.CommandType = CommandType.Text;

            connection.Open();
            SqlDataReader dr = com.ExecuteReader();

            while (dr.Read())
            {
                Session["PhotographerName"] = dr[1] + " " + dr[2];
                Session["PhotoEm"] = dr[3].ToString();
                lbl_FullName.Text = $" Name: {Session["PhotographerName"]}";
                PhotographerImagePerson.ImageUrl = dr[7].ToString();
                Image1.ImageUrl = dr[7].ToString();
                lbl_FullNameInPage.Text = $"The Full Name: {dr[1]}" + " " + $"{dr[2]}";
                lbl_Addrres.Text = $"The addrres: {dr[4]}";
                lbl_Gender.Text = $"The Gender: {dr[5]}";


            }

            connection.Close();
        }
        private void PhotographerImage()
        {
                                                        
            SqlCommand com = new SqlCommand("select * from PhotographerImage  where PhotographerEmail ='" + Session["id"] + "'", connection);

            com.CommandType = CommandType.Text;

            connection.Open();
            SqlDataReader dr = com.ExecuteReader();

            while (dr.Read())
            {
                img_PhotographerImageOne.ImageUrl = dr[1].ToString();
                img_PhotographerImageTwo.ImageUrl = dr[2].ToString();
                img_PhotographerImageThree.ImageUrl = dr[3].ToString();
                img_PhotographerImageFour.ImageUrl = dr[4].ToString();
            }

            connection.Close();
        }
        private void PhotographerTools()
        {
             
            SqlCommand com = new SqlCommand("select * from Photographer_Tools2  where PhotographerEmail ='" + Session["id"] + "'", connection);

            com.CommandType = CommandType.Text;

            connection.Open();
            SqlDataReader dr = com.ExecuteReader();

            while (dr.Read())
            {
                img_CamerOne.ImageUrl = dr[3].ToString();
                img_lightImageOne.ImageUrl = dr[1].ToString();
                img_OtherOne.ImageUrl = dr[5].ToString();

            }

            connection.Close();
        }
        private void Experience()
        {
 
            SqlCommand com = new SqlCommand("select * from Experience  where PhotographerEmail ='" + Session["id"] + "'", connection);

            com.CommandType = CommandType.Text;

            connection.Open();
            SqlDataReader dr = com.ExecuteReader();

            while (dr.Read())
            {
                lbl_WorkYears.Text = $"The Work Years : {dr[2]}";
                lbl_Knowledgeln.Text = $"The Knledgein in : {dr[3]}";


            }

            connection.Close();
        }
        private void tab_Service3()
        {
                                           
            SqlCommand com = new SqlCommand("select * from tab_Service3  where PhotographerEmail ='" + Session["id"] + "'", connection);

            com.CommandType = CommandType.Text;

            connection.Open();
            SqlDataReader dr = com.ExecuteReader();

            while (dr.Read())
            {

                lbl_ServiceType.Text = $"Service Type: {dr[1]}";
                lbl_ServiceDesription.Text = $"Service Descrition: {dr[2]}";
                lbl_serviceAmmount.Text = $"The price {dr[3]}";
                Session["Price"] = dr[3].ToString();
                Session["EventType"] = dr[1].ToString();
            }

            connection.Close();
        }
        private void CustomerInFO()
        {
 
            SqlCommand com = new SqlCommand("select * from Customer2  where email ='" + Session["CustomerEmail"] + "'", connection);

            com.CommandType = CommandType.Text;

            connection.Open();
            SqlDataReader dr = com.ExecuteReader();

            while (dr.Read())
            {
                Session["FirstName"] = dr[1].ToString();
                Session["LastName"] = dr[2].ToString();
                Session["address"] = dr[4].ToString();

            }

            connection.Close();
        }
        private void Resrvation(string payment = null, string address = null)
        {

             if (address == null)
             {
                 connection.Open();
                 SqlCommand com = new SqlCommand("insert into Resrvetion (FullNameOfPhotographer,Address,ResrvetionTime,EventType,ResrvetionStates,DayOfResrvation,Price,payment,CustomerEmail,PhotographerEmail) values (@FullName,@Address,@ResrvetionTime,@EventType,@ResrvetionStates,@DayOfResrvation,@Price,@payment,'" + Session["CustomerEmail"] + "','" + Session["PhotoEm"] + "')", connection);
                 com.Parameters.AddWithValue("@FullName", Session["PhotographerName"].ToString());
                 com.Parameters.AddWithValue("@Address", Session["Ad"].ToString());
                 com.Parameters.AddWithValue("@ResrvetionTime", Calendar1.SelectedDate.ToShortDateString().ToString());
                 com.Parameters.AddWithValue("@EventType", Session["EventType"].ToString());
                 com.Parameters.AddWithValue("@ResrvetionStates", "Sending");
                 com.Parameters.AddWithValue("@DayOfResrvation", Calendar1.SelectedDate.ToString());
                 com.Parameters.AddWithValue("@Price", Session["Price"].ToString());
                 com.Parameters.AddWithValue("@payment", payment);
                 com.ExecuteNonQuery();
                 connection.Close();
             }
             else
             {
                 connection.Open();
                 SqlCommand com = new SqlCommand("insert into Resrvetion (FullNameOfPhotographer,Address,ResrvetionTime,EventType,ResrvetionStates,DayOfResrvation,Price,payment,CustomerEmail,PhotographerEmail) values (@FullName,@Address,@ResrvetionTime,@EventType,@ResrvetionStates,@DayOfResrvation,@Price,@payment,'" + Session["CustomerEmail"] + "','" + Session["PhotoEm"] + "')", connection);
                 com.Parameters.AddWithValue("@FullName", Session["PhotographerName"].ToString());
                 com.Parameters.AddWithValue("@Address", address);
                 com.Parameters.AddWithValue("@ResrvetionTime", Calendar1.SelectedDate.ToShortDateString().ToString());
                 com.Parameters.AddWithValue("@EventType", Session["EventType"].ToString());
                 com.Parameters.AddWithValue("@ResrvetionStates", "Sending");
                 com.Parameters.AddWithValue("@DayOfResrvation", Calendar1.SelectedDate.ToString());
                 com.Parameters.AddWithValue("@Price", Session["Price"].ToString());
                 com.Parameters.AddWithValue("@payment", payment);
            //     com.ExecuteNonQuery();
                 connection.Close();

             }
        }
        private void btn(bool trfue)
        {
            txt_address.Visible = trfue;
            lbl_Address.Visible = trfue;
            lbl_AddressTwo.Visible = trfue;
            ddr_City.Visible = trfue;

        }
        private void DisplayCommment()
        {
            
           SqlDataAdapter dataAdapter = new SqlDataAdapter("Select * from Comment   ", connection);

                DataSet ds = new DataSet();

                dataAdapter.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind(); 
        }
        protected void btn_Resrvation_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select * from Criedit_Card2 where CustomerEmail=@email ", connection);
            connection.Open();
            comm.Parameters.AddWithValue("@email", Session["CustomerEmail"].ToString());
            SqlDataReader sdr = comm.ExecuteReader();
            bool chk = sdr.HasRows;
            connection.Close();


            if (rio_CahngeAddress.Checked)
            {
                string NewAddress = ddr_City.Text + " / " + txt_address.Text;
                if (rio_CarditCard.Checked)
                {
                    if (chk == true)
                    {
                        Resrvation("Cardit Card", NewAddress);
                    }
                    else
                    {
                        Response.Write(" <script > alert('Plases add your cardit card ');</script>");
                    }
                }
                else if (rio_cash.Checked)
                {
                    Resrvation("cash", NewAddress);
                }

            }
            else if (rio_DoNotCahngeAddress.Checked)
            {
                if (rio_CarditCard.Checked==true)
                {
                    if (chk == true)
                    {
                        Resrvation("Cardit Card");
                    }
                    else
                    {
                        Response.Write(" <script > alert('Plases add your cardit card ');</script>");
                    }

                }
                else if (rio_cash.Checked)
                {
                    Resrvation("Cash");
                }
            }
        }
        protected void btn_addComment_Click(object sender, EventArgs e)
        {
            bool goodword;
            string[] t = txt_comment.Text.Split(' ');
            string orginelText = txt_comment.Text;
            string[] bad = { "dog" };

            for (int i = 0; i < t.Length; ++i)
            {
                for (int ba = 0; ba < bad.Length; ++ba)
                {
                    if (t[i].Contains(bad[ba]) == true)
                    {
                        string d = t[i].Replace(bad[ba], "****");
                        lbl_Mesaage.Text ="Plases Enter Good word";
                        goodword = false;
                    }
                    else if (t[i].Contains(bad[ba]) != true)
                    {
                        goodword = true;
                        lbl_Mesaage.Text = "Your comment is save ";
                        g(goodword,orginelText);
                    }
                }


            }
        }
         private void g(bool rue,string d)
        {
            lbl_Mesaage.Visible = true;
            if (rue ==true)
            {
                SqlCommand sqlCommand = new SqlCommand("insert into Comment (Comment,UserFullName,PhotographerEmail,CustomerEmail)values('" + d + "','" + Session["FirstName"] + " " + Session["LastName"] + "','" + Session["id"] + "','" + Session["CustomerEmail"] + "')", connection);
                connection.Open();
                sqlCommand.ExecuteNonQuery();
                connection.Close();
            }
            else
            {
               
            }
     
        }
    }
}

        
        
    

    