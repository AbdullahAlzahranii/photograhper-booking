<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Experience.aspx.cs" Inherits="_3_Verigen.Page.AdminPage.Experience" %>

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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Experience_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Experience_ID" HeaderText="Experience_ID" InsertVisible="False" ReadOnly="True" SortExpression="Experience_ID" />
                    <asp:BoundField DataField="Certificate_imge" HeaderText="Certificate_imge" SortExpression="Certificate_imge" />
                    <asp:BoundField DataField="WorkYears" HeaderText="WorkYears" SortExpression="WorkYears" />
                    <asp:BoundField DataField="knowledgeInPhotograpy" HeaderText="knowledgeInPhotograpy" SortExpression="knowledgeInPhotograpy" />
                    <asp:BoundField DataField="PhotographerEmail" HeaderText="PhotographerEmail" SortExpression="PhotographerEmail" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Experience] WHERE [Experience_ID] = @Experience_ID" InsertCommand="INSERT INTO [Experience] ([Certificate_imge], [WorkYears], [knowledgeInPhotograpy], [PhotographerEmail]) VALUES (@Certificate_imge, @WorkYears, @knowledgeInPhotograpy, @PhotographerEmail)" SelectCommand="SELECT * FROM [Experience]" UpdateCommand="UPDATE [Experience] SET [Certificate_imge] = @Certificate_imge, [WorkYears] = @WorkYears, [knowledgeInPhotograpy] = @knowledgeInPhotograpy, [PhotographerEmail] = @PhotographerEmail WHERE [Experience_ID] = @Experience_ID">
                <DeleteParameters>
                    <asp:Parameter Name="Experience_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Certificate_imge" Type="String" />
                    <asp:Parameter Name="WorkYears" Type="String" />
                    <asp:Parameter Name="knowledgeInPhotograpy" Type="String" />
                    <asp:Parameter Name="PhotographerEmail" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Certificate_imge" Type="String" />
                    <asp:Parameter Name="WorkYears" Type="String" />
                    <asp:Parameter Name="knowledgeInPhotograpy" Type="String" />
                    <asp:Parameter Name="PhotographerEmail" Type="String" />
                    <asp:Parameter Name="Experience_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
