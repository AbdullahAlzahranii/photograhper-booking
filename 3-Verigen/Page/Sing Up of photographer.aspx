<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sing Up of photographer.aspx.cs" Inherits="_3_Verigen.Page.Sing_Up_of_photographer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Css/new.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            display: block;
            width: 100%;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #212529;
            background-clip: padding-box;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            margin-bottom: 0;
            background-color: #fff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="overlayFilter">
            <div class="container-sm" style="max-width: 800px">
                <h4 class="text">Create New Photographer account
                </h4>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                <div class=" row ">
                    <%-- This is element of phtographer image  --%>
                    <h5>The Img </h5>
                    <asp:Label ID="lbl_Maessage" runat="server" Text=""></asp:Label>
                  
                    <div class=" col-sm-5 form-field ">
                        <label for="formFile" class="form-label">
                            Priel img 
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="flu_ImageProfile" ErrorMessage="Plases Enter the Prefl image" ForeColor="Red">*</asp:RequiredFieldValidator>--%>
                        </label>
                        <asp:FileUpload ID="flu_ImageProfile" CssClass="form-control" runat="server" />
                    </div>
                    <div class=" col-sm-5 form-field ">
                        <label for="formFile" class="form-label">
                            Your Image
                            <br />
                        </label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="flu_imagePhotographer" ErrorMessage="Plases Enter the Photographer image" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:FileUpload ID="flu_imagePhotographer" CssClass="form-control" runat="server" AllowMultiple="True" />
                    </div>
                    <div class=" col-sm-5 form-field ">
                        <label for="formFile" class="form-label">
                            Your Image
                            <br />
                        </label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="flu_imagePhotographer2" ErrorMessage="Plases Enter the Photographer image" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:FileUpload ID="flu_imagePhotographer2" CssClass="form-control" runat="server" AllowMultiple="True" />
                    </div>
                    <div class=" col-sm-5 form-field ">
                        <label for="formFile" class="form-label">
                            Your Image
                            <br />
                        </label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="flu_imagePhotographer3" ErrorMessage="Plases Enter the Photographer image" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:FileUpload ID="flu_imagePhotographer3" CssClass="form-control" runat="server" AllowMultiple="True" />
                    </div>
                    <div class=" col-sm-5 form-field ">
                        <label for="formFile" class="form-label">
                            Your Image
                            <br />
                        </label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="flu_imagePhotographer4" ErrorMessage="Plases Enter the Photographer image" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:FileUpload ID="flu_imagePhotographer4" CssClass="form-control" runat="server" AllowMultiple="True" />
                    </div>
                    <%-- End --%>

                    <%-- The element of Experience --%>
                    <h5>Experience</h5>
                    <div class=" col-sm-5  form-field ">
                        <label for="exampleInputEmail4" class="form-label">
                            How many years work in this filed 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_YearsWork" ErrorMessage="Plases Enter the How mant years work if you do not have just add 0" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </label>
                        <asp:TextBox ID="txt_YearsWork" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class=" col-sm-5 form-field ">

                        <label for="exampleInputEmail4" class="form-label">Knowledge in Photographer</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_KnowlegePhotographer" ErrorMessage="Plases Enter Knowledge in photographer if you do not have Enter 0" ForeColor="Red">*</asp:RequiredFieldValidator>
                        &nbsp;<asp:TextBox ID="txt_KnowlegePhotographer" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class=" col-sm-5 form-field ">
                        <label for="formFile" class="form-label">Certificate</label>&nbsp;<asp:FileUpload ID="flu_Certificate" CssClass="form-control" runat="server" AllowMultiple="True" />
                    </div>

                    <h5>Service</h5>
                    <div class="col-sm-5 form-field " style="margin-top: 35px;">
                        <div class="dropdown " style="margin-left: 40px">
                            <asp:Label ID="lbl_area" runat="server" Text="Label">Service Type:</asp:Label>
                            <asp:DropDownList ID="ddl_Service" CssClass="btn bg-primary dropdown-toggle text-white text-center" runat="server">
                                <asp:ListItem>Food</asp:ListItem>
                                <asp:ListItem>Coffee</asp:ListItem>
                                <asp:ListItem>Personl</asp:ListItem>
                                <asp:ListItem>Wedding</asp:ListItem>
                                <asp:ListItem>baby</asp:ListItem>
                                <asp:ListItem>Event</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddl_Service" ErrorMessage="Plases choose Type of service" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class=" col-sm-5 form-field">
                        <label for="exampleInputPassword4" class="form-label">Description</label>
                        <asp:TextBox ID="txt_Description" CssClass="auto-style1" runat="server"></asp:TextBox>
                    </div>


                    <div class="col-sm-5 form-field " style="margin-top: 35px;">
                        <div class="dropdown ">
                            <asp:Label ID="Label1" runat="server" Text="Label">How you accpt the price:</asp:Label>
                            <asp:DropDownList ID="ddl_AccptPrice" CssClass="btn bg-primary dropdown-toggle text-white text-center" runat="server">
                                <asp:ListItem>Select Item</asp:ListItem>
                                <asp:ListItem>Houres</asp:ListItem>
                                <asp:ListItem>Day</asp:ListItem>
                                <asp:ListItem>Package</asp:ListItem>
                                <asp:ListItem>Album</asp:ListItem>
                            </asp:DropDownList>
<%--                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ddl_AccptPrice"></asp:RequiredFieldValidator--%>
                        </div>
                    </div>
                    <div class=" col-sm-5 form-field ">
                        <label for="exampleInputPassword4" class="form-label">The price</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txt_Price"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt_Price" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <%-- End --%>

                    <%-- The element of tools  --%>
                    <h5>Tools</h5>

                    <div class=" col-sm-5 form-field">
                        <label for="formFile" class="form-label">Image of the Camera</label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="flu_CameraOne"></asp:RequiredFieldValidator>
                        &nbsp;<asp:FileUpload ID="flu_CameraOne" CssClass="form-control" runat="server" AllowMultiple="True" />
                    </div>
                       <div class=" col-sm-5 form-field">
                        <label for="formFile" class="form-label">You can add new image camera</label>
                        &nbsp;<asp:FileUpload ID="flu_CameraTwo" CssClass="form-control" runat="server" AllowMultiple="True" />
                    </div>

                    <div class=" col-sm-5   form-field">
                        <label for="formFile" class="form-label">
                            Image of the Light<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="flu_LightOne"></asp:RequiredFieldValidator>
                        </label>
                        &nbsp;<asp:FileUpload ID="flu_LightOne" CssClass="form-control" runat="server" AllowMultiple="True" />
                    </div>
                         <div class=" col-sm-5   form-field">
                        <label for="formFile" class="form-label">
                           You can add new image of light
                        </label>
                        &nbsp;<asp:FileUpload ID="flu_LightTwo" CssClass="form-control" runat="server" AllowMultiple="True" />
                    </div>

                    <div class=" col-sm-5   form-field">
                        <label for="formFile" class="form-label">Image of the other<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="flu_OtherOne"></asp:RequiredFieldValidator></label>
                        &nbsp;<asp:FileUpload ID="flu_OtherOne" CssClass="form-control" runat="server" AllowMultiple="True" />
                    </div>

                    <div class=" col-sm-5   form-field">
                        <label for="formFile" class="form-label">You can add new other image</label>
                        &nbsp;<asp:FileUpload ID="flu_OtherTwo" CssClass="form-control" runat="server" AllowMultiple="True" />
                   </div>
                    <%-- End --%>

                    <%-- The boutton --%>
                    <div class="text-center" style="margin-top: 20px;">
                        <asp:Button ID="btn_SingUp" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="btn_SingUp_Click" />
                    </div>
                    <%-- End --%>
               
            </div>
        </div>
        </div>
    </form>
</body>
</html>
