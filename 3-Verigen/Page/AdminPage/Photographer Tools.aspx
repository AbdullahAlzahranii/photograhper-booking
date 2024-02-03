<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Photographer Tools.aspx.cs" Inherits="_3_Verigen.Page.AdminPage.Photographer_Tools" %>

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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ToolsID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ToolsID" HeaderText="ToolsID" InsertVisible="False" ReadOnly="True" SortExpression="ToolsID" />
                    <asp:BoundField DataField="lightImageOne" HeaderText="lightImageOne" SortExpression="lightImageOne" />
                    <asp:BoundField DataField="lightImageTwo" HeaderText="lightImageTwo" SortExpression="lightImageTwo" />
                    <asp:BoundField DataField="CameraOne" HeaderText="CameraOne" SortExpression="CameraOne" />
                    <asp:BoundField DataField="CameraTwo" HeaderText="CameraTwo" SortExpression="CameraTwo" />
                    <asp:BoundField DataField="OtherOne" HeaderText="OtherOne" SortExpression="OtherOne" />
                    <asp:BoundField DataField="OtherTwo" HeaderText="OtherTwo" SortExpression="OtherTwo" />
                    <asp:BoundField DataField="PhotographerEmail" HeaderText="PhotographerEmail" SortExpression="PhotographerEmail" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Photographer_Tools2]" DeleteCommand="DELETE FROM [Photographer_Tools2] WHERE [ToolsID] = @ToolsID" InsertCommand="INSERT INTO [Photographer_Tools2] ([lightImageOne], [lightImageTwo], [CameraOne], [CameraTwo], [OtherOne], [OtherTwo], [PhotographerEmail]) VALUES (@lightImageOne, @lightImageTwo, @CameraOne, @CameraTwo, @OtherOne, @OtherTwo, @PhotographerEmail)" UpdateCommand="UPDATE [Photographer_Tools2] SET [lightImageOne] = @lightImageOne, [lightImageTwo] = @lightImageTwo, [CameraOne] = @CameraOne, [CameraTwo] = @CameraTwo, [OtherOne] = @OtherOne, [OtherTwo] = @OtherTwo, [PhotographerEmail] = @PhotographerEmail WHERE [ToolsID] = @ToolsID">
                <DeleteParameters>
                    <asp:Parameter Name="ToolsID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="lightImageOne" Type="String" />
                    <asp:Parameter Name="lightImageTwo" Type="String" />
                    <asp:Parameter Name="CameraOne" Type="String" />
                    <asp:Parameter Name="CameraTwo" Type="String" />
                    <asp:Parameter Name="OtherOne" Type="String" />
                    <asp:Parameter Name="OtherTwo" Type="String" />
                    <asp:Parameter Name="PhotographerEmail" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="lightImageOne" Type="String" />
                    <asp:Parameter Name="lightImageTwo" Type="String" />
                    <asp:Parameter Name="CameraOne" Type="String" />
                    <asp:Parameter Name="CameraTwo" Type="String" />
                    <asp:Parameter Name="OtherOne" Type="String" />
                    <asp:Parameter Name="OtherTwo" Type="String" />
                    <asp:Parameter Name="PhotographerEmail" Type="String" />
                    <asp:Parameter Name="ToolsID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
