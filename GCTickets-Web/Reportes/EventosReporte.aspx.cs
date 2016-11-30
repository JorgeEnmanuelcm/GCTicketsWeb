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
    public partial class EventosReporte : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Reportes(EventosReportViewer);
            }
        }

        private void Reportes(ReportViewer rv)
        {
            rv.LocalReport.DataSources.Clear();
            rv.ProcessingMode = ProcessingMode.Local;
            rv.LocalReport.ReportPath = @"Reportes\EventosReport.rdlc";
            ReportDataSource sourse = new ReportDataSource("EventosDataset", EventosClass.ListadoDt("1=1"));
            rv.LocalReport.DataSources.Add(sourse);
            rv.LocalReport.Refresh();
        }
    }
}