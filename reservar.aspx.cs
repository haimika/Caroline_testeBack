using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MongoDB.Bson;
using MongoDB.Driver;

namespace reservar
{
    public partial class WebForm2 : System.Web.UI.Page
    {
		Dim conexaoMongo As String = "mongodb://localhost/"
		
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Validar(object sender, EventArgs e)
        {
            if (txtEmail != "joao@ibm.com" && txtSenha != "1234")
                lblMensagem = "Email ou senha incorretos";
        }
    }
}