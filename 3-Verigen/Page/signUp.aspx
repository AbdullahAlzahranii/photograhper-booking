<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="_3_Verigen.Page.signUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
              background:linear-gradient(to right, #536976, #292e49);
        }
    </style>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <link href="../Css/SignUpOf%20User.css" rel="stylesheet" />
 
    
</head>
<body>
    <form id="form1" runat="server">
               <div class="overlayFilter"> 
<div class="container-sm"> 
 <h4 class="text"> Create New account</h4>   
       <asp:ValidationSummary ID="ValidationSummary2" runat="server" />
       <div class=" row ">
        <div class=" col-sm-5  form-field ">
          <label for="exampleInputEmail4" class="form-label">First Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_FirstName" ErrorMessage="Enter First Name" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txt_FirstName" CssClass="form-control" runat="server"></asp:TextBox>
     
        </div>
        <div class=" col-sm-5 form-field ">
            <div class=""> 
            <label for="exampleInputEmail4" class="form-label">Last Name<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_LastName" ErrorMessage="Enter Last Name" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
                </label>
           &nbsp;<asp:TextBox ID="txt_LastName" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
          </div>
          <div class="col-sm-5 form-field ">
            <label for="exampleInputEmail4" class="form-label-md">Email<label for="exampleInputEmail4" class="form-label"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_Email" ErrorMessage="Enter Email" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
              </label>
              </label>
              <asp:RegularExpressionValidator ID="RegularExpressionValiator1" runat="server" ControlToValidate="txt_Email" ErrorMessage="Your must Email has @Gmail.com,@Hotmale.com or @outlook" Font-Size="Larger" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
&nbsp;<asp:TextBox ID="txt_Email" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
       
          </div>
        <div class=" col-sm-5 form-field" >
          <label for="exampleInputPassword4" class="form-label">Password<label for="exampleInputEmail4" class="form-label"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_Password" ErrorMessage="Enter Password" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
            </label>
            </label>
           &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_Password" ErrorMessage="Plases you must using least one upper case letter, one lower case letter, and one number " Font-Size="Larger" ForeColor="Red" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,20}$">*</asp:RegularExpressionValidator>
            <asp:TextBox ID="txt_Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div class=" col-sm-5 form-field ">
            <label for="exampleInputPassword4" class="form-label">Password-re<label for="exampleInputEmail4" class="form-label"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_PasswordRe" ErrorMessage="Enter Password-re" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
            </label>
            </label>
             <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_Password" ControlToValidate="txt_PasswordRe" ErrorMessage="Plases Enter the password correct" Font-Size="Larger" ForeColor="Red">*</asp:CompareValidator>
&nbsp;<asp:TextBox ID="txt_PasswordRe" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
          </div>
          <div class=" col-sm-5 form-field">
            <label for="exampleInputEmail1" class="form-label">Phone number<label for="exampleInputEmail4" class="form-label"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_PhoneNumber" ErrorMessage="EnterPhone number" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
              </label>
              </label>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_PhoneNumber" ErrorMessage="Your phone number must be 05********" Font-Size="Larger" ForeColor="Red" ValidationExpression="05\d{8}">*</asp:RegularExpressionValidator>
&nbsp;<asp:TextBox ID="txt_PhoneNumber" CssClass="form-control" runat="server" TextMode="Phone"></asp:TextBox>
          </div>
           <div class=" col-sm-6 mt-5 form-field">
            <div class="dropdown ">
                 <asp:Label ID="lbl_area" runat="server" Text="Label">Choose your Region:</asp:Label>
                <asp:DropDownList ID="ddl_Region"   CssClass="btn bg-primary dropdown-toggle text-white text-center" runat="server" OnSelectedIndexChanged="ddl_Region_SelectedIndexChanged" >
                    <asp:ListItem>Riyadh</asp:ListItem>
                    <asp:ListItem>Makkah</asp:ListItem>
                    <asp:ListItem>Al Baha</asp:ListItem>
                    <asp:ListItem>Al Jawf</asp:ListItem>
                    <asp:ListItem>Northern Borders</asp:ListItem>
                    <asp:ListItem>Qassim</asp:ListItem>
                    <asp:ListItem>Tabuk </asp:ListItem>
                    <asp:ListItem>Ha&#39;il</asp:ListItem>
                    <asp:ListItem>Aseer </asp:ListItem>
                    <asp:ListItem> Jizan </asp:ListItem>
                    <asp:ListItem>Najran</asp:ListItem>
                </asp:DropDownList>
            <label for="exampleInputEmail4" class="form-label">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddl_Region" ErrorMessage="Enter Choose your region" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
                 </label>
               </div>
          </div>
            <div class=" col-sm-4 mt-5 form-field">
            <div class="dropdown ">
                <asp:Label ID="lbl_City" runat="server" Text="Choose your City:" Visible="False"></asp:Label>
                <asp:DropDownList ID="DDL_City"   CssClass="btn bg-primary dropdown-toggle text-white text-center" runat="server" Visible="False">
                    <asp:ListItem>Abha</asp:ListItem>
            
                    <asp:ListItem>Ad-Dilam</asp:ListItem>
            
                    <asp:ListItem>Al-Abwa</asp:ListItem>
                    <asp:ListItem>Al Artaweeiyah</asp:ListItem>
                    <asp:ListItem>Al Artaweeiyah</asp:ListItem>
                    <asp:ListItem>Badr</asp:ListItem>
                    <asp:ListItem>Baljurashi</asp:ListItem>
                    <asp:ListItem>Bisha</asp:ListItem>
                    <asp:ListItem>Bareq</asp:ListItem>
                    <asp:ListItem>Buraydah</asp:ListItem>
                    <asp:ListItem>Al Bahah</asp:ListItem>
                    <asp:ListItem>Buqaa</asp:ListItem>
                    <asp:ListItem>Dammam</asp:ListItem>
                    <asp:ListItem>Dhurma</asp:ListItem>
                    <asp:ListItem>Dahaban</asp:ListItem>
                    <asp:ListItem>Dhurma</asp:ListItem>
                    <asp:ListItem>Dahaban</asp:ListItem>
                    <asp:ListItem>Duba</asp:ListItem>
                    <asp:ListItem>Farasan</asp:ListItem>
                    <asp:ListItem>Al-Quway&#39;iyah</asp:ListItem>
                    <asp:ListItem>Haql</asp:ListItem>
                    <asp:ListItem>Ha&#39;il</asp:ListItem>
                    <asp:ListItem>Hotat Bani Tamim</asp:ListItem>
                    <asp:ListItem>Hofuf</asp:ListItem>
                    <asp:ListItem>Hafr Al-Batin</asp:ListItem>
                    <asp:ListItem>Jeddah</asp:ListItem>
                    <asp:ListItem>Jizan</asp:ListItem>
                    <asp:ListItem>Jazan Economic City</asp:ListItem>
                    <asp:ListItem>Jubail</asp:ListItem>
                    <asp:ListItem>Khafji</asp:ListItem>
                    <asp:ListItem>King Abdullah Economic City</asp:ListItem>
                    <asp:ListItem>Khamis Mushait</asp:ListItem>
                    <asp:ListItem>Al-Kharj</asp:ListItem>
                    <asp:ListItem>Khobar</asp:ListItem>
                    <asp:ListItem>Layla </asp:ListItem>
                    <asp:ListItem>Al Majma&#39;ah</asp:ListItem>
                    <asp:ListItem>Al- Mubarraz</asp:ListItem>
                    <asp:ListItem>Medina</asp:ListItem>
                    <asp:ListItem>Mecca</asp:ListItem>
                    <asp:ListItem>Muzahmiyya</asp:ListItem>
                    <asp:ListItem>Najran</asp:ListItem>
                    <asp:ListItem>Al-Namas</asp:ListItem>
                    <asp:ListItem>Qatif</asp:ListItem>
                    <asp:ListItem>Qaisumah</asp:ListItem>
                    <asp:ListItem>Al Qunfudhah</asp:ListItem>
                    <asp:ListItem>Qurayyat</asp:ListItem>
                    <asp:ListItem>Ar Rass</asp:ListItem>
                    <asp:ListItem>Ranyah</asp:ListItem>
                    <asp:ListItem>Riyadh</asp:ListItem>
                    <asp:ListItem>Sakakah</asp:ListItem>
                    <asp:ListItem>Taif</asp:ListItem>
                    <asp:ListItem>Tabuk</asp:ListItem>
                    <asp:ListItem>Tanomah</asp:ListItem>
                    <asp:ListItem>Al Wajh</asp:ListItem>
                    <asp:ListItem>Yanbu</asp:ListItem>
                    <asp:ListItem>Al Zulfi</asp:ListItem>
            
                </asp:DropDownList>
            <label for="exampleInputEmail4" class="form-label">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DDL_City" ErrorMessage="Enter Choose your city" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
                </label>
               </div>
          </div>
          <div class=" col-sm-5 mt-5 form-field">
            <div class="dropdown ">
                 <asp:Label ID="lbl_Gender" runat="server" Text="Label">Choose your gender:</asp:Label>
                <asp:DropDownList ID="ddl_Gender"  CssClass="btn bg-primary dropdown-toggle text-white text-center" runat="server" AutoPostBack="True">
                    <asp:ListItem>Man</asp:ListItem>    
                    <asp:ListItem>Woman</asp:ListItem>   
                </asp:DropDownList>
            <label for="exampleInputEmail4" class="form-label">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddl_Gender" ErrorMessage="Enter Choose your gender" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
                 </label>
               </div>
          </div>
           
            

    <div class=" Change-plaec-btn">
          <p> <asp:CheckBox ID="chk_AcceptPhotographer" CssClass="form-check-input " runat="server" /> Are you Photographer?</p>   
          </div>
         
             <div> <asp:Button ID="btn_submit"  CssClass="btn btn-primary" runat="server" Text="Sign UP" OnClick="btn_submit_Click" />  </div>
           
</div>
</div>
       </div>
              
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 
    </form>
</body>
</html>
