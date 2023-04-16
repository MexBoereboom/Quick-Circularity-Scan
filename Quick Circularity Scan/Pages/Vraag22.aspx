﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vraag22.aspx.cs" Inherits="Quick_Circularity_Scan.Pages.Vraag22" %>

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
                <span class="details">Tijdens de productie van ons product komt er energie vrij. Deze energie wordt teruggewonnen voor een ander doeleinde, hierdoor gaat er geen energie onnodig verloren.<br />
                 <br />
                 </span>&nbsp;<div class="Antwoorden">
                    <div>
                        <input runat="server" type="radio"  name="Antwoord22" id="Vraag22A" />
                        Helemaal mee eens
                    <br />
                        <input runat="server" type="radio" name="Antwoord22" id="Vraag22B" />
                        Mee eens
                    <br />
                        <input runat="server" type="radio" name="Antwoord22" id="Vraag22C" />
                        Neutraal
                    <br />
                        <input runat="server" type="radio" name="Antwoord22" id="Vraag22D" />
                        Niet mee eens
                    <br />
                        <input runat="server" type="radio" name="Antwoord22" id="Vraag22E" />
                        Helemaal niet mee eens
                    <br />
                    <br />
                        <input runat="server" type="radio" name="Antwoord22" id="Vraag22F" />
                        Niet van toepassing
                    <br />
                        <input runat="server" type="radio" name="Antwoord22" id="Vraag22G" />
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

