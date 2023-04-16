<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vraag1.aspx.cs" Inherits="Quick_Circularity_Scan.Pages.Vraag1" %>

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
                <span class="details">Giftige-, schaarse- en niet-recyclebare grondstoffen worden compleet vermeden bij de productie van ons product.
                 <img src="../Images/information%20icon.png" style="height: 15px; width: 16px;" title="" />
                 <br />
                 <br />
                 </span>&nbsp;<div class="Antwoorden">
                    <div>
                        <input runat="server" type="radio"  name="Antwoord1" id="Vraag1A" />
                        Helemaal mee eens
                    <br />
                        <input runat="server" type="radio" name="Antwoord1" id="Vraag1B" />
                        Deels mee eens
                    <br />
                        <input runat="server" type="radio" name="Antwoord1" id="Vraag1C" />
                        Neutraal
                    <br />
                        <input runat="server" type="radio" name="Antwoord1" id="Vraag1D" />
                        Deels niet mee eens
                    <br />
                        <input runat="server" type="radio" name="Antwoord1" id="Vraag1E" />
                        Helemaal niet mee eens
                    <br />
                    <br />
                        <input runat="server" type="radio" name="Antwoord1" id="Vraag1F" />
                        Niet van toepassing
                    <br />
                        <input runat="server" type="radio" name="Antwoord1" id="Vraag1G" />
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
