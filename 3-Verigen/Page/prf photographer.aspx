<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prf photographer.aspx.cs" Inherits="_3_Verigen.Page.prf_photographer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Css/prf%20Photographer.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="container-fluid">
        <div class="container-fluid">
    <div class="row min-vh-100 flex-column flex-md-row" style="max-width: 1500px;">
      <aside id="asideId" class="col-12 col-md-3 col-xl-2 p-0  flex-shrink-1">
        <nav class="navbar navbar-expand-md navbar-dark bd-dark flex-md-column flex-row align-item-center py-2 text-xenter stickt-top" id="sidebar">
          <div id="image" class="text-center p-3">
            
                   <asp:Image ID="PhotographerImagePerson" runat="server"    Width="184px" Height="195px" style="max-height: 200px; max-width: 250px; border-radius:50px;"/>   
              </div>
                   <class="img-fluid  my-4 p-1 d-none d-md-block">
                   <a href="" class="navbar-brand mx-0 font-weight-bold text-nowrap" style="padding: 37px;"><asp:Label ID="lbl_FullName" runat="server" Text="Label"></asp:Label></a>
            
               
        
            
          <button class="navbar-toggler border-0 order-1" data-toggle="collapse" data-target="#nav" aria-controls="=nav"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse prder-last" id="nav">
            <ul class="navbar-nav flex-column w-100 justify-content-center">
              <li class="nav-item">
              <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Page/Home.aspx" ForeColor="White" Font-Underline="True">Home</asp:HyperLink>
              </li>
              <li class="nav-item">
                <a href="" class="nav-link ">Information</a>
              </li>
              <li class="nav-item">
                <a href="" class="nav-link ">image</a>
              </li>
              <li class="nav-item">
                <a href="" class="nav-link ">Booking</a>
                
              </li>
              <li class="nav-item">
             <a href="" class="nav-link ">commant</a>
              </li>
            </ul>
          </div>
        </nav>
      </aside>


      <section class="col  flex-grow-1">
        <div class="row">
          <section class=" container col-sm-9 boxOfInfo " style="width: 100%; margin-top: 25px;  ">
            <div class="row">

                 
                   <div class="col-xl">
                        <asp:Image ID="Image1" runat="server"     CssClass="col" />  
                   </div>
             
              <div class=" col-xl TextInfo" style="max-width:100%">
                  
                <h4><asp:Label ID="lbl_FullNameInPage" runat="server" ></asp:Label></h4>
                      <p> <asp:Label ID="lbl_Addrres" runat="server" ></asp:Label> </p>
                      <p> <asp:Label ID="lbl_Gender" runat="server" ></asp:Label> </p>
                      <p> <asp:Label ID="lbl_ServiceType" runat="server" ></asp:Label> </p>
                      <p><asp:Label ID="lbl_ServiceDesription" runat="server"></asp:Label> </p>
                      <p><asp:Label ID="lbl_WorkYears" runat="server" ></asp:Label> </p>
                      <p> <asp:Label ID="lbl_Knowledgeln" runat="server" ></asp:Label> </p>
                
              </div>
            </div>
          </section>
          <section class="container col-sm-9 boxOfImage " style="width: 100%;  ">
            <h3 style="margin-bottom:26px;">Image</h3>
            <div class=" row ">
              <div " style=" max-width:250px; margin-left: 5%;">
                   <asp:Image ID="img_PhotographerImageOne"   CssClass="card-img-top" runat="server" />
            
              </div>
              <div style="max-width:250px;">
                         <asp:Image ID="img_PhotographerImageTwo"   CssClass="card-img-top" runat="server" />
           
              </div>
              <div style="max-width:250px;">
                       <asp:Image ID="img_PhotographerImageThree"   CssClass="card-img-top" runat="server" />
              
              </div>
              <div style="max-width:250px;">
                    <asp:Image ID="img_PhotographerImageFour"  CssClass="card-img-top" runat="server" />
             
              </div>
            </div>

          </section>
         <section class="container  col-sm-9 boxOftools" style="width: 100%; ">
            <h3 style="margin-bottom: 26px;">Tools</h3>
            <div class=" row text-center">
              <div class="card  " style="max-width:250px; margin-left: 5%;">
                 <asp:Image ID="img_CamerOne"  runat="server" CssClass="card-img-top img-fluid" />
              </div>
                   <div class="card text-center" style="max-width:250px;">
                  <asp:Image ID="img_CamerTwo"  runat="server" CssClass="card-img-top img-fluid" />
              </div>
              <div class="card text-center" style="max-width:250px;">
                  <asp:Image ID="img_lightImageOne"  runat="server" CssClass="card-img-top img-fluid" />
              </div>
                   <div class="card text-center" style="max-width:250px;">
                  <asp:Image ID="img_lightImageTwo"  runat="server" CssClass="card-img-top img-fluid" />
              </div>
              <div class="card text-center" style="max-width:250px;">
                  <asp:Image ID="img_OtherOne"    runat="server" CssClass="card-img-top img-fluid" />
              </div>
                   <div class="card text-center" style="max-width:250px;">
                  <asp:Image ID="img_OtherTwo"  runat="server" CssClass="card-img-top img-fluid" />
              </div>
             
            </div>

          </section>
            <section class="container col-sm-9 boxOfBooking" style="width: 100%; ">
            <h3>Address</h3>
              
             <div class="text-center">
                <p> Do you want to change the location for the photographer to come to the plases ?</p>
             </div>
                <div>
                    <asp:RadioButton ID="rio_CahngeAddress" runat="server" GroupName="address" Text="Yes" AutoPostBack="True"    />
                     <asp:RadioButton ID="rio_DoNotCahngeAddress" runat="server" GroupName="address" Text="No" AutoPostBack="True"   />
                </div>
                <div>
                  <asp:Label ID="lbl_Address" runat="server" Visible="False">Plases Add your address</asp:Label>
                    <asp:DropDownList ID="ddr_City" runat="server" Visible="False">
                        <asp:ListItem >city</asp:ListItem>
                        <asp:ListItem>Jeddah</asp:ListItem>
                    </asp:DropDownList>
                    <br />      <br />
                    <asp:Label ID="lbl_AddressTwo" runat="server" Visible="False" >Plases write your address</asp:Label>
                      <br />
                    <asp:TextBox ID="txt_address" runat="server" Height="66px" TextMode="MultiLine" Width="234px" Visible="False"></asp:TextBox>
&nbsp;</div>

          </section>

          <section class="container col-sm-9 boxOfBooking" style="width: 100%; ">
            <h3>Booking</h3>
             
              <div style="margin-bottom:20px;"> <asp:Label ID="lbl_serviceAmmount"  runat="server" Text="Label"></asp:Label>  </div>
             <p class="text-center"> The day resrvation you went? </p>  <br/>
            <div class="text-center"> 
              <asp:Calendar ID="Calendar1" runat="server" style="margin-left: 35%;" CssClass="auto-style1" CaptionAlign="Top" CellPadding="4" PrevMonthText="" SelectedDate="05/04/2022 05:55:41"   >
                  <DayHeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
              </asp:Calendar>
                </div>
            <br/>
              <asp:RadioButton ID="rio_CarditCard" runat="server"  Text=" Cradit card " GroupName="card"/>  <asp:RadioButton ID="rio_cash" runat="server" Text=" Cach" GroupName="card" />
              
                <br/>  <br/>
              <asp:Button ID="btn_Resrvation" runat="server" CssClass="btn bg-primary" Text="Resrvation" ForeColor="White" OnClick="btn_Resrvation_Click" />


          </section>
             <section class="container col-sm-9 boxOfComment" style="width: 100%;">
                        <h3 style="margin-bottom: 26px;">Comment</h3>

            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
                <ItemTemplate>
                    
                        <div class="row">
                            <div class="card text-center" style="width: 18rem;">
                                <div class="card-body">
                                    <h5 class="card-title"><%# Eval("UserFullName") %></h5>
                                    <p class="card-text">
                                       <%# Eval("Comment") %>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </section>
                </ItemTemplate>
            </asp:DataList>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Comment] FROM [Comment] WHERE ([PhotographerEmail] = @PhotographerEmail)">
                     <SelectParameters>
                         <asp:SessionParameter Name="PhotographerEmail" SessionField="id" Type="String" />
                     </SelectParameters>
                        </asp:SqlDataSource>
                 </section>
       <section class="container col-sm-9 boxOfBooking" style="width: 100%; ">
            <h3>Add Comment</h3>
              
             <div class="text-center">
                 <asp:Label ID="lbl_Mesaage" runat="server" Text="Label" Visible="False"></asp:Label>
             </div>
                
                <div>
                    <asp:TextBox ID="txt_comment" runat="server" TextMode="MultiLine" Height="74px" Width="210px"></asp:TextBox>
                    <br />      <br />
                    
                      <br />
                    <asp:Button ID="btn_addComment" runat="server" Text="Save Comment" OnClick="btn_addComment_Click"   />
&nbsp; 
            </div>

          </section>

    </div>

  </div>
            </div>
    </form>
</body>
</html>
