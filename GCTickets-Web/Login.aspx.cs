using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;

namespace GCTickets_Web
{
    public partial class Login : System.Web.UI.Page
    {
        UsuariosClass Usuario = new UsuariosClass();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            bool retorno = true;
            if (retorno)
            {
                Usuario.NombreUsuario = UsuarioTextBox.Text;
            }

            if (ContraseniaTextBox.Text.Length == 0)
            {
                Utilities.ShowToastr(this, "Error", "Contraseña Invalido", "Error");
                retorno = false;
            }

            if (retorno)
            {
                Usuario.Contrasenia = ContraseniaTextBox.Text;
            }

            if (Usuario.IniciarSesion())
            {
                FormsAuthentication.RedirectFromLoginPage(UsuarioTextBox.Text, RecordarCheckBox.Checked);
            }
            else
            {
                Utilities.ShowToastr(this.Page, "Error de Inicio", "Error", "Error");
            }

        }
    }
}

