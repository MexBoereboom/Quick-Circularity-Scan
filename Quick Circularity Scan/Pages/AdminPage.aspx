<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Quick_Circularity_Scan.Pages.AdminPage" %>

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
            <asp:ImageButton ImageUrl="~/Images/Home Icon.png" runat="server" height="50" onclick="HomeBttn_Clicked" />
        </div>
        <div class="GreyBoxScan">
            <div class="adminlogin">
                <h2 >Admin Login</h2>
                <div class="input-box"">
                    <span class="details">Gebruikersnaam</span>
                    <br />
                    <asp:TextBox id="GebruikersnaamAdminInput" runat="server" class="inputtext" type="text" />
                </div>
                <div class="input-box">
                    <span class="details">Wachtwoord</span>
                    <br />
                    <asp:TextBox class="inputtext" runat="server" type="password" id="WachtwoordAdminInput" />
                </div>
                <div class="BttnBox">
                    <asp:Button Text="Login" runat="server" class="bttn" OnClick="LoginBttn_Click"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
