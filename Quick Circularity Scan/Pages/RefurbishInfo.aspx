<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RefurbishInfo.aspx.cs" Inherits="Quick_Circularity_Scan.Pages.RefurbishInfo" %>

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
                    <h3>Refurbish</h3>
                    Met Refurbish wordt bedoeld: ‘Het product opknappen voor hergebruik’. 
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
                <div style="text-align:left;" class="PersoonsGegevens">
                    <h3>Robotica</h3>
                    Robots kunnen worden gebruikt om repetitieve taken uit te voeren, zoals het demonteren en monteren van componenten. Dit vermindert de noodzaak voor menselijke arbeid en verhoogt de efficiëntie.
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
