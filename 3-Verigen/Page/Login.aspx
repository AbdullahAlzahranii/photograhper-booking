<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_3_Verigen.Page.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
  <style>
* {
    box-sizing: border-box;
    padding: 0;
    margin: 0;
    font-family: Poppins, sans-serif;
    color:white;
}
body {
    background:linear-gradient(to right, #536976, #292e49);
}
.text {
    text-align: center;
     
    border-bottom: 2px solid silver;
    margin: 20px;
}
.container {
    margin-top: 10%;
    border-radius: 25px;
    border: 5px solid black;
  
}
.form-field {
    max-width: 500px;
    margin-top: 19px;
}
#TextBox2 {
    border-radius: 22px;
}
.form-field input {
    border-radius: 22px;
}
.check {
    margin-top: 25px;
    text-indent: 5px;
    margin-bottom: 20px;
}
#submit {
    margin-top: 20px;
    margin-bottom: 22px;
    padding-left: 100px;
    padding-right: 100px;
    color:white;
}
.lbl_SignUp{
    padding:5px;
}
.lbl_Forget{
    padding:8px;
}
.Change-plaec-btn{
    padding:5px;
}
.hlk_RestPassword::selection::line-marker{
  color:blue;
  background-color:aqua;
}
  </style>
 
    <link href="../Css/logingood.css" rel="stylesheet" />
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">
  <div class="container  text-center w-100 "  style="max-width: 500px; color:white; height: 460px;"  > 
         <h4 class="text " style="color:white">Login</h4>   
                <div class="  form-field ">
                  <label for="exampleInputEmail4" class="form-label">Enter your Email </label><asp:RegularExpressionValidator ID="RegularExpressionValiator1" runat="server" ControlToValidate="txt_Email" ErrorMessage="Enter your email corret" Font-Size="Larger" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                 <asp:TextBox ID="txt_Email" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                 
                </div>
                <div class="  form-field ">
                    <label for="exampleInputEmail4" class="form-label">Password</label>
                      <asp:TextBox ID="txt_Password"  CssClass="form-control"  runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <div class="check">
                 <asp:CheckBox ID="che_RemmberMy" Text="Remmber my" runat="server" /> 
                </div>
      <div class="lbl_SignUp"> 
            <asp:Label ID="Label1" runat="server" Text="Label">If you do not have account click</asp:Label> <asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl="~/Page/signUp.aspx" ForeColor="blue" Font-Overline="False" Font-Underline="False">Sing Up</asp:HyperLink> 
            </div>
      <div class="lbl_Forget">
                 <asp:Label ID="Label2" runat="server" Text="Label"> If you forget your password 
                     <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Page/Forget Password.aspx" ForeColor="blue"  Font-Overline="False" Font-Underline="False" CssClass= "hlk_RestPassword" >Reset Your password</asp:HyperLink></asp:Label>
             </div>

      <div class=" Change-plaec-btn">  
                <asp:Button ID="btn_Login" cssclass=" btn btn-primary " runat="server" Text="Login" OnClick="btn_Login_Click" />
              
        </div>
     </div>
        
    </form>
</body>
</html>
