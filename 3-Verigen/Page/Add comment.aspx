<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add comment.aspx.cs" Inherits="_3_Verigen.Page.Add_comment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 
    <link href="../Css/Comment.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="overlayFilter">
            <div class="container-sm">
                <h4 class="text">Add comment</h4>
            
                <div class="row text-center ">
                      <div class="text-center" style="justify-items:center;">
                           <label for="exampleInputEmail4" class="form-label">Comment</label> 
                          <div style="margin-left:27%">
                <asp:TextBox ID="txt_FirstName" CssClass="form-control" runat="server" TextMode="MultiLine" Width="350px" Columns="4"></asp:TextBox>
                          </div>
                          <div style="margin:15px">
                              <asp:Button ID="btn_AddComent" CssClass="btn bg-primary text-light" runat="server" Text="Save comment" />
                          </div>
                       
                      </div>
                        

                    
                </div>
            </div>
        </div>
    </form>
</body>
</html>
