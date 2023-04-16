<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RefuseInfo.aspx.cs" Inherits="Quick_Circularity_Scan.Pages.RefuseInfo" %>

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
                    <h3>Refuse</h3>
                    Met Refuse wordt bedoeld: ‘Het vermijden van afval’. 
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
                <div style="text-align:left;" class="PersoonsGegevens">
                    <h3>Additive Manufacturing (AM)</h3>
                    AM, waaronder 3D-printing, maakt het mogelijk om producten te produceren met minder materiaal dan traditionele productietechnieken. Dit kan helpen om afval te verminderen en de duurzaamheid te bevorderen. 
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
