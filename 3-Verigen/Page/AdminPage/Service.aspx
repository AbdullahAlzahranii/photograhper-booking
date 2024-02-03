<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Service.aspx.cs" Inherits="_3_Verigen.Page.AdminPage.Service" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>    <link href="../../Css/RE%20photographer.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="tab_Service_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="tab_Service_ID" HeaderText="tab_Service_ID" InsertVisible="False" ReadOnly="True" SortExpression="tab_Service_ID" />
                    <asp:BoundField DataField="Service_Type" HeaderText="Service_Type" SortExpression="Service_Type" />
                    <asp:BoundField DataField="Service_Description" HeaderText="Service_Description" SortExpression="Service_Description" />
                    <asp:BoundField DataField="Service_ammount" HeaderText="Service_ammount" SortExpression="Service_ammount" />
                    <asp:BoundField DataField="PhotographerEmail" HeaderText="PhotographerEmail" SortExpression="PhotographerEmail" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tab_Service3] WHERE [tab_Service_ID] = @tab_Service_ID" InsertCommand="INSERT INTO [tab_Service3] ([Service_Type], [Service_Description], [Service_ammount], [PhotographerEmail]) VALUES (@Service_Type, @Service_Description, @Service_ammount, @PhotographerEmail)" SelectCommand="SELECT * FROM [tab_Service3]" UpdateCommand="UPDATE [tab_Service3] SET [Service_Type] = @Service_Type, [Service_Description] = @Service_Description, [Service_ammount] = @Service_ammount, [PhotographerEmail] = @PhotographerEmail WHERE [tab_Service_ID] = @tab_Service_ID">
                <DeleteParameters>
                    <asp:Parameter Name="tab_Service_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Service_Type" Type="String" />
                    <asp:Parameter Name="Service_Description" Type="String" />
                    <asp:Parameter Name="Service_ammount" Type="String" />
                    <asp:Parameter Name="PhotographerEmail" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Service_Type" Type="String" />
                    <asp:Parameter Name="Service_Description" Type="String" />
                    <asp:Parameter Name="Service_ammount" Type="String" />
                    <asp:Parameter Name="PhotographerEmail" Type="String" />
                    <asp:Parameter Name="tab_Service_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
