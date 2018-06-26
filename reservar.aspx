<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 290px">
    <form id="form1" runat="server">
&nbsp;Email:
		<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
		<br />
		<br />
		Senha:
		<asp:TextBox ID="txtSenha" runat="server"></asp:TextBox>
		<br />
		<br />
		<br />
		<asp:Button ID="Button1" runat="server" OnClick="Validar" Text="Entrar" />
		<asp:Label ID="lblMensagem" runat="server" Text="Label"></asp:Label>
	</form>
</body>
</html>
