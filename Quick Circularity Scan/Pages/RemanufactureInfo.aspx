<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RemanufactureInfo.aspx.cs" Inherits="Quick_Circularity_Scan.Pages.RemanufactureInfo" %>

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
                    <h3>Remanufacture</h3>
                    Met Remanufacture wordt bedoeld: ‘Het herstellen van een product naar zijn oorsprong’.  
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
                <div style="text-align:left;" class="PersoonsGegevens">
                    <h3>Augmented Reality (AR)</h3>
                    AR kan worden gebruikt om technici te helpen bij het uitvoeren van remanufacturing-taken, waardoor de nauwkeurigheid en efficiëntie worden verbeterd. 
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
