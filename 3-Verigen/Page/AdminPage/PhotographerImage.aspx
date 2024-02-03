<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhotographerImage.aspx.cs" Inherits="_3_Verigen.Page.AdminPage.PhotographerImage" %>

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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="ImageOne" HeaderText="ImageOne" SortExpression="ImageOne" />
                    <asp:BoundField DataField="ImageTwo" HeaderText="ImageTwo" SortExpression="ImageTwo" />
                    <asp:BoundField DataField="ImageThree" HeaderText="ImageThree" SortExpression="ImageThree" />
                    <asp:BoundField DataField="ImageFour" HeaderText="ImageFour" SortExpression="ImageFour" />
                    <asp:BoundField DataField="PhotographerEmail" HeaderText="PhotographerEmail" SortExpression="PhotographerEmail" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [PhotographerImage] WHERE [Id] = @Id" InsertCommand="INSERT INTO [PhotographerImage] ([ImageOne], [ImageTwo], [ImageThree], [ImageFour], [PhotographerEmail]) VALUES (@ImageOne, @ImageTwo, @ImageThree, @ImageFour, @PhotographerEmail)" SelectCommand="SELECT * FROM [PhotographerImage]" UpdateCommand="UPDATE [PhotographerImage] SET [ImageOne] = @ImageOne, [ImageTwo] = @ImageTwo, [ImageThree] = @ImageThree, [ImageFour] = @ImageFour, [PhotographerEmail] = @PhotographerEmail WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ImageOne" Type="String" />
                    <asp:Parameter Name="ImageTwo" Type="String" />
                    <asp:Parameter Name="ImageThree" Type="String" />
                    <asp:Parameter Name="ImageFour" Type="String" />
                    <asp:Parameter Name="PhotographerEmail" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ImageOne" Type="String" />
                    <asp:Parameter Name="ImageTwo" Type="String" />
                    <asp:Parameter Name="ImageThree" Type="String" />
                    <asp:Parameter Name="ImageFour" Type="String" />
                    <asp:Parameter Name="PhotographerEmail" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
