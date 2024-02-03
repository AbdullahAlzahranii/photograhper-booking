<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="_3_Verigen.Page.Home" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Css/Home.css" rel="stylesheet" />
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style type="text/css">
  .auto-style1 {
flex: 1 0 0%;
 width: 100%;
        
}
* {
box-sizing: border-box;
padding: 0;
margin: 0;
font-family: Poppins, sans-serif;
}
.container-fluid {
 padding: 25px;
}
.box {
 max-width: 700px;
max-height: 500px;
background-color: white;
border-radius: 30px;
display: flex;
align-items: center;
padding: 10px;
display: inline;
}
.btn-primary {
margin-left: 25px;
}
.box > input {
 flex: 1;
height: 30px;
outline: none;
border: none;
font-size: 18px;
}
body {
  background:#f2f2f2;

}
.img-container {
 position: relative;
 max-width: 280px;
 background-color: silver;
}
.img-container img {
max-height: 280px;
max-height: 280px;
}
.image {
transition: .5s ease;
backface-visibility: hidden;
}
.overlay {
 transition: .5s ease;
opacity: 0;
position: absolute;
top: 50%;
left: 50%;
transform: translate(-50%,-50%);
}
 .card-img-top {
 width: 100%;
 height: 15vw;
 object-fit: cover;
}
.card {
 border: 5px solid ;
 border-radius: 10px;
 margin-top: 20px;
 max-width: 380px;
max-height: 380px;
 color: white;
 text-align: center;
 background:#595959;
}
 .card:hover {
  background-color: white;
  color: black;
  cursor: pointer;
  transform: scale(1.03);
 transition: all 1s ease;
}
.card button {
 display: inline;
}
.datalist {
 text-align: center;
}
.img-container:hover .image {
 opacity: 0.2;
}
 .img-container:hover .overlay {
opacity: 1;
}
    </style>
</head>

<body>
    <form id="form1" runat="server">
      
        <header>
            <div class=" container-fluid  bg-dark">
                <div class="navbar navbar-expand-lg " style="left: -25px; top: -25px">
                    <a href="#" class=" navbar-brand" style="color: white; font-size: 25px; margin: 5px; margin-right:3px;">Photographer   <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-camera" viewBox="0 0 16 16">
  <path d="M15 12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V6a1 1 0 0 1 1-1h1.172a3 3 0 0 0 2.12-.879l.83-.828A1 1 0 0 1 6.827 3h2.344a1 1 0 0 1 .707.293l.828.828A3 3 0 0 0 12.828 5H14a1 1 0 0 1 1 1v6zM2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2z"/>
  <path d="M8 11a2.5 2.5 0 1 1 0-5 2.5 2.5 0 0 1 0 5zm0 1a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM3 6.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0z"/>
</svg></a>

                    <div class="navbar-collapse  justify-content-center ">
                        <ul class="navbar-nav text-white">
                            <li>
                                <a id="text" href="#" class="nav-link" style="color: white; font-size: 20px; margin: 5px;">Home</a></li>
                             <li>
                            <div class="dropdown " style="margin-top: 9px; font-size: 20px;">
                                <asp:DropDownList ID="ddl_Resrvation" CssClass="btn dropdown-toggle text-center nav-item dropdown" runat="server" BackColor="Black" ForeColor="White" OnSelectedIndexChanged="ddl_Resrvation_SelectedIndexChanged" AutoPostBack="True" style="left: 0px; top: 0px; width: 140px">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>Resrvation</asp:ListItem>
                                    <asp:ListItem>Crdit card</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            </li>
              
               <li>
                 <div class="dropdown " style="margin-top: 9px; font-size: 20px;">
                     <asp:DropDownList ID="ddl_Photographer" CssClass="btn dropdown-toggle text-center nav-item dropdown" runat="server" BackColor="Black" ForeColor="White" Visible="False" AutoPostBack="True"  >
                         <asp:ListItem Selected="True">Select</asp:ListItem>
                         <asp:ListItem>Acept orders</asp:ListItem>
                     </asp:DropDownList>
                 </div>
                            </li>
                             <li>
                 <div class="dropdown " style="margin-top: 9px; font-size: 20px;">
                     <asp:DropDownList ID="ddl_Admin" CssClass="btn dropdown-toggle text-center nav-item dropdown" runat="server" BackColor="Black" ForeColor="White" Visible="False" AutoPostBack="True" OnSelectedIndexChanged="ddl_Admin_SelectedIndexChanged">
                         <asp:ListItem Selected="True">Select</asp:ListItem>
                         <asp:ListItem>User</asp:ListItem>
                         <asp:ListItem>Photographer</asp:ListItem>
                         <asp:ListItem>Criedit card</asp:ListItem>
                         <asp:ListItem>Experience</asp:ListItem>
                         <asp:ListItem>Photographer tools</asp:ListItem>
                         <asp:ListItem>Service</asp:ListItem>
                         <asp:ListItem>Photographer image</asp:ListItem>
                         <asp:ListItem>Resrvation</asp:ListItem>
                     </asp:DropDownList>
                 </div>
                            </li>
                            <li>
                                <a href="#" class="nav-link" style="color: white; font-size: 20px; margin: 5px;">about us</a>
                            </li>

                            
                        </ul>
                    </div>
                    <div>
                        <asp:Button ID="btn_Login" CssClass="justify-content-end btn p-sm-3 bg-primary text-white" runat="server" Text="Login" OnClick="btn_Login_Click1" />
                        <asp:Label ID="lbl_DaiplayName" CssClass="text-white" Visible="false" runat="server" Text="Label"></asp:Label>
                        <asp:Button ID="btn_loginOut" CssClass="btn btn-danger justify-content-end btn p-sm-3 text-white" runat="server" Text="login out" OnClick="btn_loginOut_Click" Visible="False" />
                   
                    </div>

                </div>
            </div>
        </header>

        <section>
            <div id="CarouselControles" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">

                    <button type="button" data-bs-target="#CarouselControles" data-bs-slide-to="0" class="active"></button>
                    <button type="button" data-bs-target="#CarouselControles" data-bs-slide-to="1"></button>
                    <button type="button" data-bs-target="#CarouselControles" data-bs-slide-to="2"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">

                        <img src="../img/unnamed%20(1).jpg" class="d-block w-100" style="height: 600px" alt="" />

                    </div>
                    <div class="carousel-item ">

                        <img src="../img/unnamed.jpg" class="d-block w-100" style="height: 600px" alt="" />
                    </div>

                    <div class="carousel-item ">
                        <img src="../img/unnamed%20(2).jpg" class="d-block w-100" style="height: 600px" alt="" />
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#CarouselControles" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#CarouselControles" data-bs-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </button>
            </div>
        </section>


        <section>
            <div class="container-fluid text-center bg-dark">
                <div class="box">
                    <i class="fi fi-rr-search" aria-hidden="true" style="background-color: black"></i>
                    <asp:TextBox ID="txt_Search" value="search" runat="server" CssClass="offset-sm-0" Height="29px" Width="445px" TextMode="Search"></asp:TextBox>
                </div>
                <asp:Button ID="btn_Search" CssClass="btn btn-primary" runat="server" Text="Search" Height="48px" Width="108px" OnClick="btn_Search_Click"  />
            </div>
        </section>
       
        <asp:DataList ID="DataList1" CssClass="datalist" runat="server" OnItemCommand="DataList1_ItemCommand" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" RepeatColumns="4" RepeatDirection="Horizontal">
            <ItemTemplate>
                  <div class="container-fluid"> 
                <section class="gallery m-lg-4" style="margin-left:20%">
                    <div class=" container-fluid">
                        <div class="row">
                            <div class="auto-style1">
                                <div class="card">
                                    <div class="img-container">
                                        <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# Eval("Prf_image") %>' Width="250px" />
                                        <div class="overlay">
                                            <asp:Button ID="Button2" runat="server"  CssClass="btn  btn-dark btn-sm" Text="More abut me " CommandArgument='<%# Eval("Email") %>' CommandName="Add" />
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title"><%# Eval("FirstName") %> <%# Eval("LastName") %></h5>
                                        <div class="card-text" style="margin:10px">
                                        <%# Eval("Service_Type") %> <br />
                                        <%# Eval("Service_Description") %>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </ItemTemplate>
        </asp:DataList>
     </div>

 



    </form>
</body>
</html>
