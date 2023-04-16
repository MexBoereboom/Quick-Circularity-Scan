<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vraag11.aspx.cs" Inherits="Quick_Circularity_Scan.Pages.Vraag11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quick Circularity Scan</title>
    <link rel="shortcut icon" href="../Images/favicon.ico" />

    <link href="../../StyleSheet2.css" rel="stylesheet" />
</head>
<body>
<form runat="server">
    <div class="HomeBttn">
        <asp:ImageButton ImageUrl="~/Images/Home Icon.png" runat="server" height="50" onclick="HomeBttn_Clicked" />
    </div>
    <div class="GreyBoxScan">
        <h2 class="Header">Quick Circularity Scan</h2>
             <div class="Scan-input-box">
                <span class="details">Producten worden modulair gebouwd, dit maakt het mogelijk om producten te demonteren en elders opnieuw te gebruiken.<br />
                 <br />
                 </span>&nbsp;<div class="Antwoorden">
                    <div>
                        <input runat="server" type="radio"  name="Antwoord11" id="Vraag11A" />
                        Helemaal mee eens
                    <br />
                        <input runat="server" type="radio" name="Antwoord11" id="Vraag11B" />
                        Mee eens
                    <br />
                        <input runat="server" type="radio" name="Antwoord11" id="Vraag11C" />
                        Neutraal
                    <br />
                        <input runat="server" type="radio" name="Antwoord11" id="Vraag11D" />
                        Niet mee eens
                    <br />
                        <input runat="server" type="radio" name="Antwoord11" id="Vraag11E" />
                        Helemaal niet mee eens
                    <br />
                    <br />
                        <input runat="server" type="radio" name="Antwoord11" id="Vraag11F" />
                        Niet van toepassing
                    <br />
                        <input runat="server" type="radio" name="Antwoord11" id="Vraag11G" />
                        Weet ik niet
                    </div>
                </div>
             </div>
            <div class="BttnBox">
                <asp:Button Text="Verder" runat="server" class="bttn" OnClick="VerderBttn_Clicked"/>
            </div>
    </div>
</form>
</body>
</html>

