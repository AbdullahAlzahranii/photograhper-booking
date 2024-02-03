<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RE user.aspx.cs" Inherits="_3_Verigen.Page.RE_user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DisPlay Resrvation</title>
</head>
<link href="../Css/RE%20user.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
      
        <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField  DataField="FullNameOfPhotographer" HeaderText="Photographer Name"/>
                 <asp:BoundField  DataField="ResrvetionTime" HeaderText="Resrvation day"/>
                 <asp:BoundField  DataField="Price" HeaderText="Price"/>
                 <asp:BoundField  DataField="Address" HeaderText="Event Location"/>
                  <asp:BoundField  DataField="EventType" HeaderText="Reservation type"/> 
                <asp:BoundField  DataField="ResrvetionStates" HeaderText="Status of reservation"/>
                 <asp:BoundField  DataField="payment" HeaderText="payment"/>

            </Columns>
        </asp:GridView>

    </form>
</body>
</html>
