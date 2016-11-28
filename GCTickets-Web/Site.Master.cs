using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using BLL;
using System.Data;

namespace GCTickets_Web
{
    public partial class Site : System.Web.UI.MasterPage
    {
        UsuariosClass Usuario = new UsuariosClass();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Context.User.Identity.Name.Length == 0)
                {
                    LoginLi.Visible = true;
                    AdmPanelLi.Visible = false;
                    UsuarioLi.Visible = false;
                    LogoutLi.Visible = false;
                }
                else
                {
                    UsuarioLabel.Text = Context.User.Identity.Name;
                    Usuario.NombreUsuario = UsuarioLabel.Text;
                    Usuario.Comprobar();
                    LoginLi.Visible = false;
                    UsuarioLi.Visible = true;
                    LogoutLi.Visible = true;
                    if (Usuario.TipoUsuario == 1)
                    {
                        AdmPanelLi.Visible = true;
                    }
                    if (Usuario.TipoUsuario == 2)
                    {
                        AdmPanelLi.Visible = false;
                    }
                }
            }
        }

        protected void LoginLinkButton_Click(object sender, EventArgs e)
        {
            LoginLi.Visible = false;
            Response.RedirectPermanent("/Login.aspx");
        }

        protected void LogoutLinkButton_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            LoginLi.Visible = true;
            Response.RedirectPermanent("/Login.aspx");
        }
    }
}

