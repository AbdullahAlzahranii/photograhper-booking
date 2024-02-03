using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;
using System.Data;

namespace _3_Verigen.Page
{
    public partial class Sing_Up_of_photographer : System.Web.UI.Page
    {
        string coonntion = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
 
        }


        protected void btn_SingUp_Click(object sender, EventArgs e)
        {

                  SaveThePhotographerImage();
                  SaveImageOfPhotographer(); // Save the image of photographer in databases 
                  SaveTheExperience();  // Save the inofrmation of Experience
                  SaveTheTools(); // Save tools in database 
                  SaveThePhotographerService(); // Save the Photographer service
                      SaveTheTools();
                Response.Redirect("~/Page/Home.aspx");
           
        }
        private void SaveImageOfPhotographer()
        {
             
            string serverFolderPath = $@"\PhotogrpaherImage\{Session["Email"]}";
            string serverFilePathImageOne = $@"\PhotogrpaherImage\{Session["Email"]}\{flu_imagePhotographer.FileName}"; string serverFilePathImageTwo = $@"\PhotogrpaherImage\{Session["Email"]}\{flu_imagePhotographer2.FileName}";
            string serverFilePathImageThree = $@"\PhotogrpaherImage\{Session["Email"]}\{flu_imagePhotographer3.FileName}"; string serverFilePathImageFour = $@"\PhotogrpaherImage\{Session["Email"]}\{flu_imagePhotographer4.FileName}";
            if (flu_imagePhotographer.HasFile && flu_imagePhotographer2.HasFile && flu_imagePhotographer3.HasFile && flu_imagePhotographer4.HasFile)
            {
                try
                {
                    if (!Directory.Exists(Server.MapPath(@"~\" + serverFolderPath))) //  
                    {
                    
                        Directory.CreateDirectory(Server.MapPath(@"~\" + serverFolderPath));

                         
                        flu_imagePhotographer.SaveAs(Server.MapPath(@"~\" + serverFilePathImageOne)); flu_imagePhotographer2.SaveAs(Server.MapPath(@"~\" + serverFilePathImageTwo));
                        flu_imagePhotographer3.SaveAs(Server.MapPath(@"~\" + serverFilePathImageThree)); flu_imagePhotographer4.SaveAs(Server.MapPath(@"~\" + serverFilePathImageFour));
                        if (checkPath(flu_imagePhotographer.FileName, flu_imagePhotographer2.FileName, flu_imagePhotographer3.FileName, flu_imagePhotographer4.FileName))
                        {
                            string Email = Session["Email"].ToString();
                            SqlConnection con = new SqlConnection(coonntion);
                            SqlCommand cmd = new SqlCommand("insert into PhotographerImage (ImageOne , ImageTwo,ImageThree,ImageFour,PhotographerEmail) values (@ImageOne,@ImageTwo,@ImageThree,@ImageFour,'" + Session["Email"] + "')", con);
                            cmd.Parameters.AddWithValue("@ImageOne", serverFilePathImageOne);
                            cmd.Parameters.AddWithValue("@ImageTwo", serverFilePathImageTwo);
                            cmd.Parameters.AddWithValue("@ImageThree", serverFilePathImageThree);
                            cmd.Parameters.AddWithValue("@ImageFour", serverFilePathImageFour);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }

                    }
                }
                catch(Exception e)
                {
                    lbl_Maessage.Text = "Plases try agaen " + e;
                }
               
                 
            }
            else
            {
                lbl_Maessage.Text = "Plases add Your image   ";
            }
        }
         private void SaveTheExperience()
        {
            string serverFolderPath = $@"\Experience\{Session["Email"]}";
            string serverFilePath = $@"\Experience\{Session["Email"]}\{flu_Certificate.FileName}";

            if (flu_ImageProfile.HasFile)
            {

                if (!Directory.Exists(Server.MapPath(@"~\" + serverFolderPath))) // اذا الملف غير موجود
                {
                    // إنشاء مجلد باسم المستخدم
                    Directory.CreateDirectory(Server.MapPath(@"~\" + serverFolderPath));

                    // حفظ الملف المرفوع الى المجلد الجديد
                    flu_ImageProfile.SaveAs(Server.MapPath(@"~\" + serverFilePath));

                    if (checkPath(flu_ImageProfile.FileName))
                    {
                        string Email = Session["Email"].ToString();
                        SqlConnection con = new SqlConnection(coonntion);
                        SqlCommand cmd = new SqlCommand("insert into Experience (Certificate_imge,WorkYears,knowledgeInPhotograpy,PhotographerEmail) values (@Certificate_imge,@WorkYears,@knowledgeInPhotograpy,'" + Session["Email"]+"') ", con);
                        cmd.Parameters.AddWithValue("@Certificate_imge", serverFilePath);
                        cmd.Parameters.AddWithValue("@WorkYears", txt_YearsWork.Text);
                        cmd.Parameters.AddWithValue("@knowledgeInPhotograpy", txt_KnowlegePhotographer.Text);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }

            }
            else
            {
                lbl_Maessage.Text = "Plases add image ";
            }
        }     
         private void SaveTheTools()
        {

            string serverFolderPath = $@"\Tools\{Session["Email"]}";

            string serverFilePathlightImageOne = $@"\Tools\{Session["Email"]}\{flu_LightOne.FileName}";  string serverFilePathlightImageTwo = $@"\Tools\{Session["Email"]}\{flu_LightTwo.FileName}";

            string serverFilePathCameraOne = $@"\Tools\{Session["Email"]}\{flu_CameraOne.FileName}";     string serverFilePathCameraTwo = $@"\Tools\{Session["Email"]}\{flu_CameraTwo.FileName}";

            string serverFilePathOtherOne = $@"\Tools\{Session["Email"]}\{flu_OtherOne.FileName}";       string serverFilePathOtherTwo = $@"\Tools\{Session["Email"]}\{flu_OtherTwo.FileName}";
            if (flu_LightOne.HasFile && flu_CameraOne.HasFile && flu_OtherOne.HasFile)
            {
                try
                {
                    if (!Directory.Exists(Server.MapPath(@"~\" + serverFolderPath))) // اذا الملف غير موجود
                    {
                        // إنشاء مجلد باسم المستخدم
                        Directory.CreateDirectory(Server.MapPath(@"~\" + serverFolderPath));

                        // حفظ الملف المرفوع الى المجلد الجديد
                        flu_LightOne.SaveAs(Server.MapPath(@"~\" + serverFilePathlightImageOne));  flu_LightTwo.SaveAs(Server.MapPath(@"~\" + serverFilePathlightImageTwo));
                        flu_CameraOne.SaveAs(Server.MapPath(@"~\" + serverFilePathCameraOne));     flu_CameraTwo.SaveAs(Server.MapPath(@"~\" + serverFilePathCameraTwo));
                        flu_OtherOne.SaveAs(Server.MapPath(@"~\" + serverFilePathOtherOne));       flu_OtherTwo.SaveAs(Server.MapPath(@"~\" + serverFilePathOtherTwo));

                       /* if (checkPath(flu_CameraOne.FileName, flu_CameraTwo.FileName, flu_LightOne.FileName, flu_LightTwo.FileName,flu_OtherOne.FileName,flu_OtherTwo.FileName))
                        {*/
                            string Email = Session["Email"].ToString();
                            SqlConnection con = new SqlConnection(coonntion);
                            SqlCommand cmd = new SqlCommand("insert into Photographer_Tools2 (lightImageOne,CameraOne,OtherOne,lightImageTwo,CameraTwo,OtherTwo,PhotographerEmail) values (@lightImageOne,@CameraOne,@OtherOne,@lightImageTwo,@CameraTwo,@OtherTwo,'" + Session["Email"] + "')", con);
                            cmd.Parameters.AddWithValue("@lightImageOne", serverFilePathlightImageOne);
                            cmd.Parameters.AddWithValue("@CameraOne", serverFilePathCameraOne);
                            cmd.Parameters.AddWithValue("@OtherOne", serverFilePathOtherOne);
                            cmd.Parameters.AddWithValue("@lightImageTwo", serverFilePathlightImageTwo);
                            cmd.Parameters.AddWithValue("@CameraTwo", serverFilePathCameraTwo);
                            cmd.Parameters.AddWithValue("@OtherTwo", serverFilePathOtherTwo);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                      //  }

                    }
                }
                catch (Exception e)
                {
                    lbl_Maessage.Text = "Plases try agaen " + e;
                }


            }
            else
            {
                lbl_Maessage.Text = "Plases add Your image   ";
            }
        } 
         private void SaveThePhotographerImage()
        {
            string serverFolderPath = $@"\PorfileImage\{Session["Email"]}";
            string serverFilePath = $@"\PorfileImage\{Session["Email"]}\{flu_ImageProfile.FileName}";

            if (flu_ImageProfile.HasFile)
            {

                if (!Directory.Exists(Server.MapPath(@"~\" + serverFolderPath))) // اذا الملف غير موجود
                {
                    // إنشاء مجلد باسم المستخدم
                    Directory.CreateDirectory(Server.MapPath(@"~\" + serverFolderPath));

                    // حفظ الملف المرفوع الى المجلد الجديد
                    flu_ImageProfile.SaveAs(Server.MapPath(@"~\" + serverFilePath));

                    if (checkPath(flu_ImageProfile.FileName))
                    {
                        string Email = Session["Email"].ToString();
                        SqlConnection con = new SqlConnection(coonntion);
                        SqlCommand cmd = new SqlCommand("update Photographer5 set Prf_image=@PhotographerImage  where Email=@Email", con);
                        cmd.Parameters.AddWithValue("@PhotographerImage", serverFilePath);
                        cmd.Parameters.AddWithValue("@Email", Email);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
             
            }
            else
            {
                lbl_Maessage.Text = "Plases add image ";
            }
        }
        
         private void SaveThePhotographerService()
        {
            string serviceType = ddl_Service.Text;
            string ServiceDescription = txt_Description.Text;
            string ammount = ddl_AccptPrice.Text + " " + txt_Price.Text + "SA";


            if(serviceType != "0")
            {
                if(ServiceDescription !="")
                {

                    SqlConnection con = new SqlConnection(coonntion);
                    SqlCommand cmd = new SqlCommand(" insert into  tab_Service3 (Service_Type ,Service_Description,Service_ammount,PhotographerEmail)  values (@serviceType,@ServiceDescription,@ammount,'" + Session["Email"]+"')  ", con);

                    cmd.Parameters.AddWithValue("@serviceType", serviceType);
                    cmd.Parameters.AddWithValue("@ServiceDescription", ServiceDescription);
                    cmd.Parameters.AddWithValue("@ammount", ammount);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                   
                }
            }

        }

     
        private bool checkPath(string pathOne, string PathTwo = null, string pathThree = null, string PathFour = null, string PathFife = null, string psthSix = null)
        {
            bool b;
            string filepath = Path.GetExtension(pathOne); string filepathTwo = Path.GetExtension(PathTwo); string filepathThree = Path.GetExtension(pathThree);
            string filepathFour = Path.GetExtension(PathFour); string filepathFife = Path.GetExtension(PathFife); string filepathSix = Path.GetExtension(psthSix);
            if (filepath == ".jpg" || filepathTwo == ".bmp" || filepath == ".gif" || filepath == ".png" && filepathTwo == ".jpg" || filepathTwo == ".bmp" || filepathTwo == ".gif" || filepathTwo == null || filepathTwo == ".png"
                && filepathThree == ".jpg" || filepathThree == ".bmp" || filepathThree == ".gif" || filepathThree == null || filepathThree == ".png" && filepathFour == ".jpg" || filepathFour == ".bmp" || filepathFour == ".gif" || filepathFour == null || filepathFour == ".png" &&
                 filepathFife == ".jpg" || filepathFife == ".bmp" || filepathFife == ".gif" || filepathFife == null || filepathFife == ".png" && filepathSix == ".jpg" || filepathSix == ".bmp" || filepathSix == ".gif" || filepathSix == null || filepathSix == ".png")
            {
                b = true;
            }
            else
            {

                b = false;
            }

            return b;
        }


    }
}