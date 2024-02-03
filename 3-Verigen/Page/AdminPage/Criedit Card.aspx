<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Criedit Card.aspx.cs" Inherits="_3_Verigen.Page.AdminPage.Criedit_Card" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 
    <link href="../../Css/RE%20photographer.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Card_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Card_ID" HeaderText="Card_ID" InsertVisible="False" ReadOnly="True" SortExpression="Card_ID" />
                    <asp:BoundField DataField="Card_Name" HeaderText="Card_Name" SortExpression="Card_Name" />
                    <asp:BoundField DataField="Card_Number" HeaderText="Card_Number" SortExpression="Card_Number" />
                    <asp:BoundField DataField="SVS" HeaderText="SVS" SortExpression="SVS" />
                    <asp:BoundField DataField="CustomerEmail" HeaderText="CustomerEmail" SortExpression="CustomerEmail" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Criedit_Card2] WHERE [Card_ID] = @Card_ID" InsertCommand="INSERT INTO [Criedit_Card2] ([Card_Name], [Card_Number], [SVS], [CustomerEmail]) VALUES (@Card_Name, @Card_Number, @SVS, @CustomerEmail)" SelectCommand="SELECT * FROM [Criedit_Card2]" UpdateCommand="UPDATE [Criedit_Card2] SET [Card_Name] = @Card_Name, [Card_Number] = @Card_Number, [SVS] = @SVS, [CustomerEmail] = @CustomerEmail WHERE [Card_ID] = @Card_ID">
                <DeleteParameters>
                    <asp:Parameter Name="Card_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Card_Name" Type="String" />
                    <asp:Parameter Name="Card_Number" Type="Int32" />
                    <asp:Parameter Name="SVS" Type="Int32" />
                    <asp:Parameter Name="CustomerEmail" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Card_Name" Type="String" />
                    <asp:Parameter Name="Card_Number" Type="Int32" />
                    <asp:Parameter Name="SVS" Type="Int32" />
                    <asp:Parameter Name="CustomerEmail" Type="String" />
                    <asp:Parameter Name="Card_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
