<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="_3_Verigen.Page.AdminPage.Users" %>

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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Custormer_ID" HeaderText="Custormer_ID" InsertVisible="False" ReadOnly="True" SortExpression="Custormer_ID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                <asp:BoundField DataField="addrres" HeaderText="addrres" SortExpression="addrres" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Phoen_Number" HeaderText="Phoen_Number" SortExpression="Phoen_Number" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Customer2] WHERE [email] = @email" InsertCommand="INSERT INTO [Customer2] ([FirstName], [LastName], [email], [addrres], [Gender], [Phoen_Number], [Password]) VALUES (@FirstName, @LastName, @email, @addrres, @Gender, @Phoen_Number, @Password)" SelectCommand="SELECT * FROM [Customer2]" UpdateCommand="UPDATE [Customer2] SET [Custormer_ID] = @Custormer_ID, [FirstName] = @FirstName, [LastName] = @LastName, [addrres] = @addrres, [Gender] = @Gender, [Phoen_Number] = @Phoen_Number, [Password] = @Password WHERE [email] = @email">
            <DeleteParameters>
                <asp:Parameter Name="email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="addrres" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Phoen_Number" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Custormer_ID" Type="Int32" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="addrres" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Phoen_Number" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
