using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;
using BLL;

namespace GCTickets_Web.Reportes
{
    public partial class TipoEvento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Reportes(TipoEventoReportViewer);
            }
        }

        private void Reportes(ReportViewer rv)
        {
            rv.LocalReport.DataSources.Clear();
            rv.ProcessingMode = ProcessingMode.Local;
            rv.LocalReport.ReportPath = @"Reportes\TipoEventoReport.rdlc";
            ReportDataSource sourse = new ReportDataSource("TipoEventoDataset", TipoEventoClass.ListadoDt("1=1"));
            rv.LocalReport.DataSources.Add(sourse);
            rv.LocalReport.Refresh();
        }
    }
}