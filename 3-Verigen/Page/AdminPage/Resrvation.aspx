<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resrvation.aspx.cs" Inherits="_3_Verigen.Page.AdminPage.Resrvation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Css/RE%20photographer.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="FullNameOfPhotographer" HeaderText="FullNameOfPhotographer" SortExpression="FullNameOfPhotographer" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="ResrvetionTime" HeaderText="ResrvetionTime" SortExpression="ResrvetionTime" />
                    <asp:BoundField DataField="EventType" HeaderText="EventType" SortExpression="EventType" />
                    <asp:BoundField DataField="ResrvetionStates" HeaderText="ResrvetionStates" SortExpression="ResrvetionStates" />
                    <asp:BoundField DataField="DayOfResrvation" HeaderText="DayOfResrvation" SortExpression="DayOfResrvation" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="payment" HeaderText="payment" SortExpression="payment" />
                    <asp:BoundField DataField="CustomerEmail" HeaderText="CustomerEmail" SortExpression="CustomerEmail" />
                    <asp:BoundField DataField="PhotographerEmail" HeaderText="PhotographerEmail" SortExpression="PhotographerEmail" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Resrvetion] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Resrvetion] ([FullNameOfPhotographer], [Address], [ResrvetionTime], [EventType], [ResrvetionStates], [DayOfResrvation], [Price], [payment], [CustomerEmail], [PhotographerEmail]) VALUES (@FullNameOfPhotographer, @Address, @ResrvetionTime, @EventType, @ResrvetionStates, @DayOfResrvation, @Price, @payment, @CustomerEmail, @PhotographerEmail)" SelectCommand="SELECT * FROM [Resrvetion]" UpdateCommand="UPDATE [Resrvetion] SET [FullNameOfPhotographer] = @FullNameOfPhotographer, [Address] = @Address, [ResrvetionTime] = @ResrvetionTime, [EventType] = @EventType, [ResrvetionStates] = @ResrvetionStates, [DayOfResrvation] = @DayOfResrvation, [Price] = @Price, [payment] = @payment, [CustomerEmail] = @CustomerEmail, [PhotographerEmail] = @PhotographerEmail WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FullNameOfPhotographer" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="ResrvetionTime" Type="String" />
                    <asp:Parameter Name="EventType" Type="String" />
                    <asp:Parameter Name="ResrvetionStates" Type="String" />
                    <asp:Parameter Name="DayOfResrvation" Type="String" />
                    <asp:Parameter Name="Price" Type="String" />
                    <asp:Parameter Name="payment" Type="String" />
                    <asp:Parameter Name="CustomerEmail" Type="String" />
                    <asp:Parameter Name="PhotographerEmail" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FullNameOfPhotographer" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="ResrvetionTime" Type="String" />
                    <asp:Parameter Name="EventType" Type="String" />
                    <asp:Parameter Name="ResrvetionStates" Type="String" />
                    <asp:Parameter Name="DayOfResrvation" Type="String" />
                    <asp:Parameter Name="Price" Type="String" />
                    <asp:Parameter Name="payment" Type="String" />
                    <asp:Parameter Name="CustomerEmail" Type="String" />
                    <asp:Parameter Name="PhotographerEmail" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
