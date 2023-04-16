<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminEditPage.aspx.cs" Inherits="Quick_Circularity_Scan.Pages.AdminEditPage" %>

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
        <div class="GreyBoxScan">
            <h2>Welkom Admin</h2>
            <div class="input-box">
                <div class="input-box">
                <h3>Vraag Toevoegen</h3>
                <span class="details">Voor welke R is de vraag ?</span>
                <br />
                    <asp:DropDownList CssClass="DropdownList" runat="server" Width="171px">
                    <asp:ListItem Disable Hidden Selected>Maak een keuze..</asp:ListItem>
                    <asp:ListItem Text="R1: Refuse"/>
                    <asp:ListItem Text="R2: Reduce" />
                    <asp:ListItem Text="R3: Rethink" />
                    <asp:ListItem Text="R4: Re-use" />
                    <asp:ListItem Text="R5: Repair" />
                    <asp:ListItem Text="R6: Refurbish" />
                    <asp:ListItem Text="R7: Remanufacture" />
                    <asp:ListItem Text="R8: Repurpose" />
                    <asp:ListItem Text="R9: Recycle" />
                    <asp:ListItem Text="R10: Recover" />
                </asp:DropDownList>
                <h2> </h2>
                <span class="details">Wat is de weging ?</span>
                <br />
                    <asp:DropDownList CssClass="DropdownList" runat="server" Width="170px">
                    <asp:ListItem Disable Hidden Selected>Maak een keuze..</asp:ListItem>
                    <asp:ListItem Text="1" />
                    <asp:ListItem Text="2" />
                </asp:DropDownList>
                <h2> </h2>
                <span class="details">Type stelling ?</span>
                <br />
                    <asp:DropDownList CssClass="DropdownList" runat="server" Width="170px">
                    <asp:ListItem Disable Hidden Selected>Maak een keuze..</asp:ListItem>
                    <asp:ListItem Text="Product" />
                    <asp:ListItem Text="Procesmatig" />
                </asp:DropDownList>
                <h2> </h2>
                    <span class="details">Vraag</span>
                    <br />
                    <asp:TextBox runat="server" class="inputtext" type="text" Width="593px" />
                </div>
                <div class="BttnBox">
                    <asp:Button Text="Opslaan" runat="server" class="bttn" OnClick="OpslaanBttn_Click"/>
                    <asp:Button Text="Data inzien" runat="server" class="bttn" OnClick="DataBttn_Click"/>
                </div>
            </div>
        </div>
     </form>
</body>
</html>
