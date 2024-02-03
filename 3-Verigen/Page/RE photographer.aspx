<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="RE photographer.aspx.cs" Inherits="_3_Verigen.Page.RE_photographer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
     
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
     <link href="../Css/RE%20photographer.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" >
            <Columns>
                <asp:BoundField  DataField="FullNameOfPhotographer" HeaderText="Photographer Name" ReadOnly="True"/>
                 <asp:BoundField  DataField="ResrvetionTime" HeaderText="Resrvation day" ReadOnly="True"/>
                 <asp:BoundField  DataField="Price" HeaderText="Price" ReadOnly="True"/>
                 <asp:BoundField  DataField="Address" HeaderText="Event Location" ReadOnly="True"/>
                  <asp:BoundField  DataField="EventType" HeaderText="Reservation type" ReadOnly="True"/> 
                <asp:BoundField  DataField="ResrvetionStates" HeaderText="Status of reservation"/>
                 <asp:BoundField  DataField="payment" HeaderText="payment" ReadOnly="True"/>
                
            
                 
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" Text="Okay" OnClick="Button1_Click" CssClass="btn bg-light" CommandArgument='<%# Eval("Id") %>' />
                          <asp:Button ID="Button2" runat="server" Text="NO" OnClick="Button2_Click" CssClass="btn bg-danger" CommandArgument='<%# Eval("Id") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                 
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
