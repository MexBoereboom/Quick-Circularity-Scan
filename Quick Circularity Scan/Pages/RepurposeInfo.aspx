<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepurposeInfo.aspx.cs" Inherits="Quick_Circularity_Scan.Pages.RepurposeInfo" %>

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
                    <h3>Repurpose</h3>
                    Met Repurpose wordt bedoeld: ‘Het hergebruiken van een product met een andere functie’. 
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
                <div style="text-align:left;" class="PersoonsGegevens">
                    <h3>Artificial Intelligence (AI</h3>
                    Kan worden gebruikt om patronen te identificeren in het gebruik en de prestaties van materialen en producten, waardoor het gemakkelijker wordt om te voorspellen welke materialen geschikt zijn voor repurposing en welke toepassingen mogelijk zijn.
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
