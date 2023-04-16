<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RethinkInfo.aspx.cs" Inherits="Quick_Circularity_Scan.Pages.RethinkInfo" %>

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
                    <h3>Rethink / Redesign</h3>
                    Met Rethink / Redesign wordt bedoeld: ‘Het herontwerp met het oog op circulariteit’. 
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
                <div style="text-align:left;" class="PersoonsGegevens">
                    <h3>Virtuele simulatie</h3>
                    Virtuele simulatie is een digital twin-technologie die wordt gebruikt om virtuele prototypen van producten te maken en te testen. Deze technologie maakt gebruik van computermodellen en simulaties om het gedrag en de prestaties van producten te voorspellen. Dit vermindert de noodzaak van fysieke prototypen en de bijbehorende afvalstromen.
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
