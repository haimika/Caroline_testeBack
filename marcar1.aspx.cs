using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MongoDB.Bson;
using MongoDB.Driver;

namespace marcar
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Dim conexaoMongo As String = "mongodb://localhost/"

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void solicitar(object sender, EventArgs e)
        {
            Response.Redirect("solicitacao.aspx");
        }

        protected void reservar(object sender, EventArgs e)
        {
            Response.Redirect("reservar.aspx");
        }
    }
}