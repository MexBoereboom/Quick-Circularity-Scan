<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReduceInfo.aspx.cs" Inherits="Quick_Circularity_Scan.Pages.ReduceInfo" %>

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
                    <h3>Reduce</h3>
                    Met Reduce wordt bedoeld: ‘Het verminderen van het gebruik van grondstoffen’. 
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
                <div style="text-align:left;" class="PersoonsGegevens">
                    <h3>Slimme energiemeters</h3>
                    Deze worden gebruikt om het energieverbruik van machines en apparatuur in de fabriek te monitoren en te meten. Deze meters kunnen verbinding maken met IoT-platforms en software die gegevensanalyse en energiebeheer mogelijk maken, waardoor bedrijven hun energieverbruik kunnen optimaliseren en verminderen. 
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
