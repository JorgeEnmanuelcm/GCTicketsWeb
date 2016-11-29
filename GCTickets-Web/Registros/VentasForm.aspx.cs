using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;

namespace GCTickets_Web.Registros
{
    public partial class VentasForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FechaTextBox.Text = DateTime.Now.ToString("dd/MM/yyyy");
                UsuarioTextBox.Text = Context.User.Identity.Name;
                CargarDropDownList();
                CargarGridview();
                EliminarButton.Visible = false;
                AgregarButton.Visible = false;
                TicketDropDownList.Visible = false;
                VentasClass Venta = new VentasClass();
                int Id = 0;
                if (Request.QueryString["ID"] != null)
                {
                    Id = Utilities.intConvertir(Request.QueryString["ID"].ToString());
                    if (Venta.Buscar(Id))
                    {
                        if (VentasGridView.Rows.Count == 0)
                        {
                            DevolverDatos(Venta);
                        }
                    }
                }
            }
        }

        private void Limpiar()
        {
            VentaIdTextBox.Text = string.Empty;
            FechaTextBox.Text = DateTime.Now.ToString("dd/MM/yyyy");
            DescripcionTextBox.Text = string.Empty;
            CantidadTextBox.Text = string.Empty;
            TotalTextBox.Text = string.Empty;
            VentasGridView.DataSource = string.Empty;
            VentasGridView.DataBind();
        }

        private void CargarGridview()
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[3] { new DataColumn("EventoId"), new DataColumn("Ticket"), new DataColumn("Cantidad") });
            ViewState["VentasClass"] = dt;
        }

        private void CargarDropDownList()
        {
            EventosClass Evento = new EventosClass();
            EventoDropDownList.DataSource = Evento.Listado(" * ", "1=1", "");
            EventoDropDownList.DataTextField = "NombreEvento";
            EventoDropDownList.DataValueField = "EventoId";
            EventoDropDownList.DataBind();
        }

        private void CargarTickets()
        {
            EventosDetalleClass Ticket = new EventosDetalleClass();
            TicketDropDownList.DataSource = Ticket.Listado("PrecioTicket, DescTicket", "EventoId='" + EventoDropDownList.SelectedValue + "'", "");
            TicketDropDownList.DataTextField = "DescTicket";
            TicketDropDownList.DataValueField = "PrecioTicket";
            TicketDropDownList.DataBind();
        }

        private void ObtenerDatos(VentasClass Venta)
        {
            Venta.VentaId = Utilities.intConvertir(VentaIdTextBox.Text);
            Venta.UsuarioId = UsuarioTextBox.Text;
            Venta.Fecha = FechaTextBox.Text;
            Venta.Descripcion = DescripcionTextBox.Text;
            Venta.Total = Utilities.intConvertir(TotalTextBox.Text);
            foreach (GridViewRow var in VentasGridView.Rows)
            {
                Venta.AgregarVenta(Convert.ToInt32(var.Cells[0].Text), Convert.ToInt32(var.Cells[1].Text), Convert.ToInt32(var.Cells[2].Text));
            }
        }

        public void DevolverDatos(VentasClass Venta)
        {
            DataTable dt = new DataTable();
            VentaIdTextBox.Text = Venta.VentaId.ToString();
            UsuarioTextBox.Text = Venta.UsuarioId.ToString();
            FechaTextBox.Text = Venta.Fecha.ToString();
            DescripcionTextBox.Text = Venta.Descripcion.ToString();
            TotalTextBox.Text = Venta.Total.ToString();
            foreach (var item in Venta.Detalle)
            {
                dt = (DataTable)ViewState["VentasClass"];
                dt.Rows.Add(item.EventoId, item.Ticket, item.Cantidad);
                ViewState["VentasClass"] = dt;
                VentasGridView.DataSource = (DataTable)ViewState["VentasClass"];
                VentasGridView.DataBind();
            }
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            VentasClass Venta = new VentasClass();
            int id = Utilities.intConvertir(VentaIdTextBox.Text);
            if (id < 0)
            {
                Utilities.ShowToastr(this, "error", "Mensaje", "error");
            }
            else
            {
                if (Venta.Buscar(id))
                {
                    EliminarButton.Visible = true;
                    GuardarButton.Text = "Modificar";
                    DevolverDatos(Venta);
                }
                else
                {
                    Utilities.ShowToastr(this, "error", "Mensaje", "error");
                }
            }
        }

        protected void AgregarButton_Click(object sender, EventArgs e)
        {
            int precio = Utilities.intConvertir(TicketDropDownList.SelectedValue);
            int cantidad = Utilities.intConvertir(CantidadTextBox.Text);
            int total = Utilities.intConvertir(TotalTextBox.Text);
            DataTable dt = (DataTable)ViewState["VentasClass"];
            dt.Rows.Add(EventoDropDownList.SelectedValue, TicketDropDownList.SelectedValue, CantidadTextBox.Text);
            ViewState["VentasClass"] = dt;
            VentasGridView.DataSource = dt;
            VentasGridView.DataBind();
            CantidadTextBox.Text = string.Empty;
            TotalTextBox.Text = (total + (cantidad * precio)).ToString();
        }

        protected void NuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();
            EliminarButton.Visible = false;
            GuardarButton.Text = "Guardar";
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            VentasClass Venta = new VentasClass();
            if (string.IsNullOrWhiteSpace(VentaIdTextBox.Text))
            {
                ObtenerDatos(Venta);
                if (Venta.Insertar())
                {
                    Limpiar();
                    AgregarButton.Visible = false;
                    TicketDropDownList.Visible = false;
                    Utilities.ShowToastr(this, "bien", "Se guardo con exito!", "success");
                }
                else
                {
                    Utilities.ShowToastr(this, "error", "Mensaje", "error");
                }
            }
            if (VentaIdTextBox.Text.Length > 0)
            {
                ObtenerDatos(Venta);
                if (Venta.Editar())
                {
                    Limpiar();
                    EliminarButton.Visible = false;
                    GuardarButton.Text = "Guardar";
                    Utilities.ShowToastr(this, "bien", "Se modifico con exito!", "success");
                }
                else
                {
                    Utilities.ShowToastr(this, "error", "Mensaje", "error");
                }
            }
        }

        protected void EliminarButton_Click(object sender, EventArgs e)
        {
            VentasClass Venta = new VentasClass();
            try
            {
                ObtenerDatos(Venta);
                if (Venta.Buscar(Venta.VentaId))
                {
                    if (Venta.Eliminar())
                    {
                        Limpiar();
                        EliminarButton.Visible = false;
                        GuardarButton.Text = "Guardar";
                        Utilities.ShowToastr(this, "bien", "Se elimino con exito!", "success");
                    }
                    else
                    {
                        Utilities.ShowToastr(this, "error", "Mensaje", "error");
                    }
                }
            }
            catch (Exception)
            {
                Utilities.ShowToastr(this, "error", "Mensaje", "error");
            }
        }

        protected void TicketButton_Click(object sender, EventArgs e)
        {
            AgregarButton.Visible = true;
            TicketDropDownList.Visible = true;
            CargarTickets();
        }
    }
}