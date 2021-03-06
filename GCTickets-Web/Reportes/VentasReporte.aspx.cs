﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;
using BLL;

namespace GCTickets_Web.Reportes
{
    public partial class VentasReporte : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Reportes(VentasReportViewer);
            }
        }

        private void Reportes(ReportViewer rv)
        {
            rv.LocalReport.DataSources.Clear();
            rv.ProcessingMode = ProcessingMode.Local;
            rv.LocalReport.ReportPath = @"Reportes\VentasReport.rdlc";
            ReportDataSource sourse = new ReportDataSource("VentasDataset", VentasClass.ListadoDt("1=1"));
            rv.LocalReport.DataSources.Add(sourse);
            rv.LocalReport.Refresh();
        }
    }
}