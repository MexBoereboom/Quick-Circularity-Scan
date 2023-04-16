<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReuseInfo.aspx.cs" Inherits="Quick_Circularity_Scan.Pages.ReuseInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quick Circularity Scan</title>
    <link rel="shortcut icon" href="../Images/favicon.ico" />

    <link href="../StyleSheet2.css" rel="stylesheet" />
</head>
<body>
 <form runat="server">
        <div class="GreyBoxScan">
            <div class="advies">
                <h2 style="text-align:center;">Advies met digitale techniek</h2>
                <div style="text-align:center;" class="BedrijfsGegevens">
                    <h3>Re-Use</h3>
                    Met Re-use wordt bedoeld: ‘Het hergebruiken van producten en componenten’. 
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
                <div style="text-align:left;" class="PersoonsGegevens">
                    <h3>Digitale identificatie</h3>
                    Met digitale identificatie kunnen producten en componenten worden getraceerd en geïdentificeerd. Dit kan helpen bij het vinden van producten en componenten die geschikt zijn voor hergebruik.
                </div>
                <br />
                <br />
                <br />
                <br />
                <asp:Button Text="Terug" runat="server" class="bttn" OnClick="TerugBttn_Click"/>
            </div>
        </div>
     </form>
</body>
</html>
