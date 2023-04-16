<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepairInfo.aspx.cs" Inherits="Quick_Circularity_Scan.Pages.RepairInfo" %>

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
                    <h3>Repair</h3>
                    Met Repair wordt bedoeld: ‘Het repareren en onderhoud van producten’. 
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
                <div style="text-align:left;" class="PersoonsGegevens">
                    <h3>Big Data en Analytics</h3>
                    Door gegevens te verzamelen en te analyseren over de prestaties van apparatuur, kan een bedrijf trends identificeren en voorspellen wanneer onderhoud nodig is. Dit vermindert de kans op storingen en verlengt de levensduur van apparatuur.
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
