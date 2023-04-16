<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="Quick_Circularity_Scan.Pages.Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quick Circularity Scan</title>
    <link rel="shortcut icon" href="../Images/favicon.ico" />

    <link href="../StyleSheet2.css" rel="stylesheet" />
</head>
<body>
 <form runat="server">
        <div class="HomeBttn">
            <asp:ImageButton ID="HomeBttn" ImageUrl="~/Images/Home Icon.png" runat="server" height="50" onclick="HomeBttn_Clicked" />
        </div>
        <div class="GreyBoxData">
            <h3>Gebruikers</h3>
            <asp:GridView ID="GebruikersGrid" class="grid" runat="server" Height="130px" Width="231px">
            </asp:GridView>
            <br />

            <h3>Resultaten</h3>
            <asp:GridView ID="ResultatenGrid" class="grid" runat="server" Height="130px" Width="239px">
            </asp:GridView>

        </div>
     </form>
</body>
</html>
