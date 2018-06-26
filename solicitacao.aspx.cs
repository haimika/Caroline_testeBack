using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MongoDB.Bson;
using MongoDB.Driver;

namespace solicitacao
{
    public partial class solicitacao : System.Web.UI.Page
    {
        Dim conexaoMongo As String = "mongodb://localhost/"

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void enviar(object sender, EventArgs e)
        {
            if (horario < "9" || horario > "18")
                Label1.Text = "Horario entre as 9 horas e 18 horas.";
        }
    }
}