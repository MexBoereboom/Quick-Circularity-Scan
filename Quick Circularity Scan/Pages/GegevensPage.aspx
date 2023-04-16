<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GegevensPage.aspx.cs" Inherits="Quick_Circularity_Scan.Pages.GegevensPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quick Circularity Scan</title>
    <link rel="shortcut icon" href="../Images/favicon.ico" />

    <link href="../StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">
        <div class="HomeBttn">
            <asp:ImageButton ID="HomeBttn" ImageUrl="~/Images/Home Icon.png" runat="server" height="50" onclick="HomeBttn_Clicked" />
        </div>
        <div class="GreyBox">
             <div class="input-box">
                        <span class="details">Uw doel*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList CssClass="DropdownList" name="DropDownDoel" runat="server" Height="19px" Width="170px">
                            <asp:ListItem Disable Hidden Selected>Maak een keuze..</asp:ListItem>
                            <asp:ListItem Text="Voor een bedrijf" id="Bedrijf"/>
                            <asp:ListItem Text="Voor eigen belang" id="EigenBelang" />
                            <asp:ListItem Text="Geen (serieus) doel" id="GeenDoel" />
                        </asp:DropDownList>
                 <img src="../Images/information%20icon.png" style="height: 15px; width: 16px" title="Deze vraag is genoodzaakt voor het verwerken van de ingevulde data." />
             </div>
                <div class="PersoonsGegevens">
                    <h2>Persoonsgegevens</h2>
                    <div class="input-box">
                        <span class="details">Volledige Naam*</span>&nbsp;
                        <asp:TextBox runat="server" ID="PersoonsNaam" class="inputtext" type="text" /></div>
                    <div class="input-box">
                        <span class="details">Functie&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        &nbsp;
                        <asp:TextBox runat="server" ID="Functie" class="inputtext" type="text" /></div>
                    <div class="input-box">
                        <span class="details">E-mail*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox runat="server" ID="PersoonsMail" class="inputtext" type="text" />
                    </div>
                    <div class="input-box">
                        <span class="details">Telefoonnummer</span>&nbsp;&nbsp;
                        <asp:TextBox runat="server" ID="Telefoonnummer" class="inputtext" type="text" />
                    </div>
                </div>
                <div class="BedrijfsGegevens">
                    <h2>Bedrijfsgegevens</h2>
                    <div class="input-box">
                        <span class="details">Bedrijfsnaam</span>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox runat="server" ID="Bedrijfsnaam" class="inputtext" type="text" />
                    </div>
                    <div class="input-box">
                        <span class="details">Bedrijfs locatie</span>
                        <asp:TextBox runat="server" ID="Bedrijfslocatie" class="inputtext" type="text" />
                    </div>
                    <div class="input-box">
                        <span class="details">Bedrijfs e-mail</span>&nbsp;
                        <asp:TextBox runat="server" ID="Bedrijfsmail" class="inputtext" type="text" />
                    </div>
                    <div class="input-box">
                        <span class="details">Sector</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:DropDownList CssClass="DropdownList" runat="server" Height="19px" Width="170px">
                            <asp:ListItem Disable Hidden Selected>Maak een keuze..</asp:ListItem>
                            <asp:ListItem Text="Reparatie en installatie machines" id="k1"/>
                            <asp:ListItem Text="Transportmiddelen" id="k2" />
                            <asp:ListItem Text="Machine" id="k3"/>
                            <asp:ListItem Text="Elektrische en elektronische apparaten" id="k4" />
                            <asp:ListItem Text="Voedingsmiddelen" id="k5"/>
                            <asp:ListItem Text="Rubber en kunstof" id="k6"/>
                            <asp:ListItem Text="Chemische producten" id="k7"/>
                            <asp:ListItem Text="Geen van bovenstaand" id="k8"/>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="BttnBox">
                    <asp:Button Text="Verder" runat="server" class="bttngegevens" OnClick="VerderGegevens_Click"/>
                </div>
            </div>
    </form>
</body>
</html>
