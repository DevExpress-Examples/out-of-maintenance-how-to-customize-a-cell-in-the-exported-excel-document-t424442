Imports System
Imports System.Drawing
Imports DevExpress.Web.ASPxPivotGrid

Namespace WebPivotExportCustomizeCell
    Partial Public Class [Default]
        Inherits System.Web.UI.Page

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
            ASPxPivotGridExporter1.ASPxPivotGridID = "ASPxPivotGrid1"
        End Sub

        Protected Sub ASPxButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
            Dim exportOptions = New PivotXlsxExportOptions()
            AddHandler exportOptions.CustomizeCell, AddressOf exportOptions_CustomizeCell
            ASPxPivotGridExporter1.ExportXlsxToResponse("PivotGrid", exportOptions)
        End Sub

        Private Sub exportOptions_CustomizeCell(ByVal e As CustomizePivotCellEventArgs)
            If e.ExportArea = DevExpress.XtraPivotGrid.PivotExportArea.Data Then
                e.Formatting.BackColor = Color.Azure
                e.Formatting.Font.Italic = True
            End If
            e.Handled = True
        End Sub
    End Class
End Namespace