<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Photographers.aspx.cs" Inherits="_3_Verigen.Page.AdminPage.Photographer" %>

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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Photographer_ID" HeaderText="Photographer_ID" InsertVisible="False" ReadOnly="True" SortExpression="Photographer_ID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                <asp:BoundField DataField="addrres" HeaderText="addrres" SortExpression="addrres" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Phoen_Number" HeaderText="Phoen_Number" SortExpression="Phoen_Number" />
                <asp:BoundField DataField="Prf_image" HeaderText="Prf_image" SortExpression="Prf_image" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="PhotogrpherImage" HeaderText="PhotogrpherImage" SortExpression="PhotogrpherImage" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Photographer5] WHERE [Email] = @original_Email AND [Photographer_ID] = @original_Photographer_ID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([addrres] = @original_addrres) OR ([addrres] IS NULL AND @original_addrres IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Phoen_Number] = @original_Phoen_Number) OR ([Phoen_Number] IS NULL AND @original_Phoen_Number IS NULL)) AND (([Prf_image] = @original_Prf_image) OR ([Prf_image] IS NULL AND @original_Prf_image IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([PhotogrpherImage] = @original_PhotogrpherImage) OR ([PhotogrpherImage] IS NULL AND @original_PhotogrpherImage IS NULL))" InsertCommand="INSERT INTO [Photographer5] ([FirstName], [LastName], [Email], [addrres], [Gender], [Phoen_Number], [Prf_image], [Status], [Password], [PhotogrpherImage]) VALUES (@FirstName, @LastName, @Email, @addrres, @Gender, @Phoen_Number, @Prf_image, @Status, @Password, @PhotogrpherImage)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Photographer5]" UpdateCommand="UPDATE [Photographer5] SET [Photographer_ID] = @Photographer_ID, [FirstName] = @FirstName, [LastName] = @LastName, [addrres] = @addrres, [Gender] = @Gender, [Phoen_Number] = @Phoen_Number, [Prf_image] = @Prf_image, [Status] = @Status, [Password] = @Password, [PhotogrpherImage] = @PhotogrpherImage WHERE [Email] = @original_Email AND [Photographer_ID] = @original_Photographer_ID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([addrres] = @original_addrres) OR ([addrres] IS NULL AND @original_addrres IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Phoen_Number] = @original_Phoen_Number) OR ([Phoen_Number] IS NULL AND @original_Phoen_Number IS NULL)) AND (([Prf_image] = @original_Prf_image) OR ([Prf_image] IS NULL AND @original_Prf_image IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([PhotogrpherImage] = @original_PhotogrpherImage) OR ([PhotogrpherImage] IS NULL AND @original_PhotogrpherImage IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Photographer_ID" Type="Int32" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_addrres" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Phoen_Number" Type="String" />
                <asp:Parameter Name="original_Prf_image" Type="String" />
                <asp:Parameter Name="original_Status" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_PhotogrpherImage" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="addrres" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Phoen_Number" Type="String" />
                <asp:Parameter Name="Prf_image" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="PhotogrpherImage" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Photographer_ID" Type="Int32" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="addrres" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Phoen_Number" Type="String" />
                <asp:Parameter Name="Prf_image" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="PhotogrpherImage" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Photographer_ID" Type="Int32" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_addrres" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Phoen_Number" Type="String" />
                <asp:Parameter Name="original_Prf_image" Type="String" />
                <asp:Parameter Name="original_Status" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_PhotogrpherImage" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
