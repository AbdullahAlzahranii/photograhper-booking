<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forget Password.aspx.cs" Inherits="_3_Verigen.Page.Forget_Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forget Password</title>   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link href="../Css/ForgetPassword.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="overlayFilter">
            <div class="container-sm">
                <h4 class="text">Forget Password</h4>
                <asp:Label ID="lbl_Message" runat="server" Visible="False" Text="Label" CssClass="text-center" Font-Size="Larger" ForeColor="Red"></asp:Label>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="Larger" ForeColor="Red" />
                <div class=" row ">
                    <div class=" col-sm-5  form-field ">
                        <label for="exampleInputEmail4" class="form-label">Email</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_Email" ErrorMessage="Plases Enter your Email" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txt_Email" CssClass="form-control" runat="server"></asp:TextBox>
          
                    </div>
                      <div class=" col-sm-5  form-field ">
                        <label for="exampleInputEmail4" class="form-label">New Password</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_Password" ErrorMessage="Plases ENter your Password" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txt_Password" CssClass="form-control" runat="server"></asp:TextBox>
                      
                    </div>
                     <div class=" col-sm-5  form-field ">
                        <label for="exampleInputEmail4" class="form-label">Re-Password</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_RePassword" ErrorMessage="Plases Enter Your Re-Password" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txt_RePassword" CssClass="form-control" runat="server"></asp:TextBox>
                         
                    </div>
                    <div class="text-center" style="margin:10px; margin-top:2%;">
                        <asp:Button ID="btn_Forget" runat="server" CssClass="btn bg-primary text-light" Text="Save" Height="37px" OnClick="btn_Forget_Click" Width="76px" style="margin-left: 0" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
