<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResultatenPage.aspx.cs" Inherits="Quick_Circularity_Scan.Pages.ResultatenPage" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quick Circularity Scan</title>
    <link rel="shortcut icon" href="../Images/favicon.ico" />

    <link href="../StyleSheet2.css" rel="stylesheet" />
</head>
<body>
<form runat="server">
    <div class="HomeBttn">
        <asp:ImageButton ImageUrl="~/Images/Home Icon.png" runat="server" height="50" onclick="HomeBttn_Clicked" />
    </div>
    <div class="GreyBoxScan">
        <h2 class="Header">Resultaten</h2>
        <div class="scrollmenu">
            <div class="BedrijfsGegevens">
                <div class="input-box">
                    <h3 id="Product">Product</h3>
                    <asp:Label id="ProductResultaat" runat="server"></asp:Label>
                    <br />
                    <asp:Label id="ProductMax" runat="server"></asp:Label>
                    <br />
                    <asp:LinkButton id="Productbttn" Text="Meer informatie" runat="server" OnClick="ProductBttn_Click"/>
                </div>
                <div class="input-box">
                    <h3 id="Refuse">R1: Refuse</h3>
                    <asp:Label id="RefuseResultaat" runat="server"></asp:Label>
                    <br />
                    <asp:Label id="RefuseMax" runat="server"></asp:Label>
                    <br />
                    <asp:LinkButton id="Refusebttn" Text="Meer informatie" runat="server" OnClick="RefuseBttn_Click"/>
                </div>
                <br />
                <div class="input-box">
                    <h3 id="Reduce">R2: Reduce</h3>
                    <asp:Label ID="ReduceResultaat" runat="server"></asp:Label>
                    <br />
                    <asp:Label id="ReduceMax" runat="server"></asp:Label>
                    <br />
                    <asp:LinkButton id="Reducebttn" Text="Meer informatie" runat="server" OnClick="ReduceBttn_Click"/>
                </div>
                <br />
                <div class="input-box">
                    <h3 id="Rethink">R3: Rethink</h3>
                    <asp:Label ID="RethinkResultaat" runat="server"></asp:Label>
                    <br />
                    <asp:Label id="RethinkMax" runat="server"></asp:Label>
                    <br />
                    <asp:LinkButton id="Rethinkbttn" Text="Meer informatie" runat="server" OnClick="RethinkBttn_Click"/>
                </div>
                <br />
                <div class="input-box">
                    <h3 id="Reuse">R4: Re-Use</h3>
                    <asp:Label ID="ReuseResultaat" runat="server"></asp:Label>
                    <br />
                    <asp:Label id="ReuseMax" runat="server"></asp:Label>
                    <br />
                    <asp:LinkButton id="Reusebttn" Text="Meer informatie" runat="server" OnClick="ReuseBttn_Click"/>
                </div>
                <br />
                <div class="input-box">
                    <h3 is="Repair">R5: Repair</h3>
                    <asp:Label ID="RepairResultaat" runat="server"></asp:Label>
                    <br />
                    <asp:Label id="RepairMax" runat="server"></asp:Label>
                    <br />
                    <asp:LinkButton id="Repairbttn" Text="Meer informatie" runat="server" OnClick="RepairBttn_Click"/>
                </div>
            </div>
            <div class="PersoonsGegevens">
                <div class="input-box">
                    <h3 id="Proces">Proces</h3>
                    <asp:Label id="ProcesResultaat" runat="server"></asp:Label>
                    <br />
                    <asp:Label id="ProcesMax" runat="server"></asp:Label>
                    <br />
                    <asp:LinkButton id="Procesbttn" Text="Meer informatie" runat="server" OnClick="ProcesBttn_Click"/>
                </div>
                <div class="input-box">
                    <h3 id="Refurbish">R6: Refurbish</h3>
                    <asp:Label ID="RefurbishResultaat" runat="server"></asp:Label>
                    <br />
                    <asp:Label id="RefurbishMax" runat="server"></asp:Label>
                    <br />
                    <asp:LinkButton id="Refurbishbttn" Text="Meer informatie" runat="server" OnClick="RefurbishBttn_Click"/>
                </div>
                <br />
                <div class="input-box">
                    <h3 id="Remanufacture">R7: Remanufacture</h3>
                    <asp:Label ID="RemanufactureResultaat" runat="server"></asp:Label>
                    <br />
                    <asp:Label id="RemanufactureMax" runat="server"></asp:Label>
                    <br />
                    <asp:LinkButton id="Remanufacturebttn" Text="Meer informatie" runat="server" OnClick="RemanufactureBttn_Click"/>
                </div>
                <br />
                <div class="input-box">
                    <h3 id="Repurpose">R8: Repurpose</h3>
                    <asp:Label ID="RepurposeResultaat" runat="server"></asp:Label>
                    <br />
                    <asp:Label id="RepurposeMax" runat="server"></asp:Label>
                    <br />
                    <asp:LinkButton id="Repurposebttn" Text="Meer informatie" runat="server" OnClick="RepurposeBttn_Click"/>
                </div>
                <br />
                <div class="input-box">
                    <h3 id="Recycle">R9: Recycle</h3>
                    <asp:Label ID="RecycleResultaat" runat="server"></asp:Label>
                    <br />
                    <asp:Label id="RecycleMax" runat="server"></asp:Label>
                    <br />
                    <asp:LinkButton id="Recyclebttn" Text="Meer informatie" runat="server" OnClick="RecycleBttn_Click"/>
                </div>
                <br />
                <div class="input-box">
                    <h3 id="Recover">R10: Recover</h3>
                    <asp:Label ID="RecoverResultaat" runat="server"></asp:Label>
                    <br />
                    <asp:Label id="RecoverMax" runat="server"></asp:Label>
                    <br />
                    <asp:LinkButton id="Recoverbttn" Text="Meer informatie" runat="server" OnClick="RecoverBttn_Click"/>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>
