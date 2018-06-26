<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 301px">
    <form id="form1" runat="server">
		Email:
		<asp:TextBox ID="email" runat="server"></asp:TextBox>
		<br />
		<br />
		Horario:
		<asp:TextBox ID="horario" runat="server"></asp:TextBox>
		<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
		<br />
		<br />
		<asp:Button ID="Button1" runat="server" Text="Enviar" OnClick="enviar" />
		<br />
	</form>
</body>
</html>
