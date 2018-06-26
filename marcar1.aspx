<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<style type="text/css">
		#form1 {
			height: 324px;
		}
	</style>
</head>
<body style="height: 558px">
    <form id="form1" runat="server">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:GridView ID="tabela" runat="server" CellPadding="4" ForeColor="#333333" GridLines="Vertical" AutoGenerateColumns="False" Height="398px" Width="687px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="segunda" HeaderText="Segunda-Feira" />
                        <asp:BoundField DataField="terça" HeaderText="Terça-Feira" />
                        <asp:BoundField DataField="quarta" HeaderText="Quarta-Feira" />
                        <asp:BoundField DataField="quinta" HeaderText="Quinta-Feira" />
                        <asp:BoundField DataField="sexta" HeaderText="Sexta-Feira" />
			</Columns>
		</asp:GridView>
		<p>
			<asp:Button ID="solicitar" runat="server" Height="31px" Text="Solicitar" Width="83px" OnClick="solicitar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:Button ID="reservar" runat="server" Height="31px" Text="Reservar" Width="83px" OnClick="reservar" />
		</p>
	</form>
	<p>
		&nbsp;</p>
</body>
</html>
