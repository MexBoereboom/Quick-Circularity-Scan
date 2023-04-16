<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecycleInfo.aspx.cs" Inherits="Quick_Circularity_Scan.Pages.RecycleInfo" %>

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
                    <h3>Recycle</h3>
                    Met Recycle wordt bedoeld: ‘De verwerking en het hergebruik van materialen’.  
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
                <div style="text-align:left;" class="PersoonsGegevens">
                    <h3>AI-technologie voor afvalclassificatie</h3>
                    AI-technologieën worden gebruikt om afvalmaterialen automatisch te classificeren op basis van hun samenstelling en eigenschappen. Deze technologieën maken gebruik van beeldherkenning en anderen sensoren om afvalmaterialen te identificeren en te sorteren. Door het gebruik van AI-technologieën wordt het sorteerproces geoptimaliseerd en wordt de kans op fouten verminderd. 
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
