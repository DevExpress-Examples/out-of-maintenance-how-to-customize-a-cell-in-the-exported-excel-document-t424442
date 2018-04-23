using System;
using System.Drawing;
using DevExpress.Web.ASPxPivotGrid;

namespace WebPivotExportCustomizeCell
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ASPxPivotGridExporter1.ASPxPivotGridID = "ASPxPivotGrid1";
        }

        protected void ASPxButton1_Click(object sender, EventArgs e)
        {
            var exportOptions = new PivotXlsxExportOptions();
            exportOptions.CustomizeCell += 
                new CustomizePivotCellEventHandler(exportOptions_CustomizeCell);
            ASPxPivotGridExporter1.ExportXlsxToResponse("PivotGrid", exportOptions);
        }

        void exportOptions_CustomizeCell(CustomizePivotCellEventArgs e)
        {
            if (e.ExportArea == DevExpress.XtraPivotGrid.PivotExportArea.Data) {
                e.Formatting.BackColor = Color.Azure;
                e.Formatting.Font.Italic = true; 
            }
            e.Handled = true;
        }
    }
}