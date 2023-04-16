<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Quick_Circularity_Scan.Pages.HomePage" %>

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
        <asp:ImageButton ImageUrl="~/Images/icon-admin.png" runat="server" height="50" onclick="AdminBttn_Clicked" />
    </div>
    <div class="HomeBox">
        <img src="../Images/QCS_png-removebg-preview.png" class="QCSimg" />
        <div class="IntroductieBox">
            <h3>Introductie</h3>
            <div class="introductietext" style="margin-left:133px; margin-right:10px; width: 729px;">
            <textbox style="text-align:left;">Deze quickscan is ontwikkeld om de mate van circulariteit van een organisatie te meten en tegelijkertijd advies te bieden over het benutten van circulaire kansen met behulp van digitale technieken. Door middel van een reeks stellingen krijgt de gebruiker inzicht in welke mate zijn of haar organisatie op dit moment is en waar mogelijkheden ligger om circulariteit te bevorderen. De scan is gebaseerd op nieuwe literatuuronderzoeken, input vanuit het bedrijfsleven en experts op het gebied circulariteit en digitale technieken. Daardoor biedt de scan concrete aanbevelingen om de circulaire economie te omarmen. </textbox>
            </div>
            <br />
            <img src="../Images/SDG's.png" />
            <br />
            <asp:LinkButton ID="meerinfo" Text="Meer informatie" runat="server" OnClick="MeerInfo_Click" />
        </div>
        <div class="BttnBox">
            <asp:Button Text="Start Scan" runat="server" class="bttn" OnClick="StartScanBttn_Clicked"/>
        </div>
        </div>
        </form>
</body>
</html>
