<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecoverInfo.aspx.cs" Inherits="Quick_Circularity_Scan.Pages.RecoverInfo" %>

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
                    <h3>Recover</h3>
                    Met Recover wordt bedoeld: ‘Het terugwinnen van energie door (rest)afvalverbranding’. 
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
                <div style="text-align:left;" class="PersoonsGegevens">
                    <h3>Data-analyse</h3>
                    Door het gebruik van big data en data-analysetools kunnen bedrijven de hoeveelheid en kwaliteit van afval en reststoffen die tijdens het productieproces worden geproduceerd, beter monitoren en analyseren. Dit stelt bedrijven in staat om gerichtere maatregelen te nemen om deze afvalstromen te hergebruiken of terug te winnen.
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
