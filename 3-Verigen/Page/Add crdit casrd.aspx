<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add crdit casrd.aspx.cs" Inherits="_3_Verigen.Page.Add_crdit_casrd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
    background: linear-gradient(to right, #536976, #292e49);
}
    </style>
    <link href="../Css/Add%20crdit%20card.css" rel="stylesheet" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="overlayFilter">
            <div class="container-sm">
                <h4 class="text">Add card</h4>
                <asp:ValidationSummary ID="ValidationSummary2" runat="server" />
                <div class=" row ">
                    <div class=" col-sm-5  form-field ">
                        <label for="exampleInputEmail4" class="form-label">Card Name</label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_CardName" ErrorMessage="Plases Enter your Card Name" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt_CardName" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class=" col-sm-5 form-field ">
                        <div class="">
                            <label for="exampleInputEmail4" class="form-label">
                               Card Number<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_CardNumber" ErrorMessage="Plases Enter your Card Number" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
&nbsp;</label>&nbsp;<asp:TextBox ID="txt_CardNumber" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                     <div class=" col-sm-5 form-field ">
                        <div class="">
                            <label for="exampleInputEmail4" class="form-label">
                              SVS
                            </label>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_Svs" ErrorMessage="Plases Enter SVS " Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_Svs" ErrorMessage="Plases Enter three number" Font-Size="Larger" ForeColor="Red" ValidationExpression="\d{3}">*</asp:RegularExpressionValidator>
                            <asp:TextBox ID="txt_Svs" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class=" text-center">
                        <asp:Button ID="Button1" CssClass="btn bg-primary text-light" runat="server" Text="Save" Height="38px" Width="93px" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
