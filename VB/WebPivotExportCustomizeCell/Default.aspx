<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebPivotExportCustomizeCell.Default" %>

<%@ Register Assembly="DevExpress.Web.v15.2, Version=15.2.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v15.2, Version=15.2.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="padding-bottom: 5px;">
        <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Export to Excel" 
            onclick="ASPxButton1_Click" Theme="Metropolis">
        </dx:ASPxButton>
    </div>
    <div>
        <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" ClientIDMode="AutoID" 
            DataSourceID="SqlDataSource1" Theme="Metropolis">
            <Fields>
                <dx:PivotGridField ID="fieldCountry" Area="ColumnArea" AreaIndex="0" 
                    FieldName="Country">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldProductName" Area="RowArea" AreaIndex="1" 
                    Caption="Product" FieldName="ProductName">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldCategoryName" Area="RowArea" AreaIndex="0" 
                    Caption="Category" FieldName="CategoryName">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldSalesPerson" Area="ColumnArea" AreaIndex="1" 
                    Caption="Sales Person" FieldName="Sales_Person">
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldExtendedPrice" Area="DataArea" AreaIndex="0" 
                    Caption="Extended Price" FieldName="Extended_Price">
                </dx:PivotGridField>
            </Fields>
        </dx:ASPxPivotGrid>
        <dx:ASPxPivotGridExporter ID="ASPxPivotGridExporter1" runat="server">
        </dx:ASPxPivotGridExporter>
        <asp:AccessDataSource ID="SqlDataSource1" runat="server" 
            DataFile="~/App_Data/nwind.mdb" 
            SelectCommand="SELECT [Country], [ProductName], [CategoryName], [OrderDate], [UnitPrice], [Sales Person] AS Sales_Person, [Extended Price] AS Extended_Price, [Discount], [Quantity] FROM [SalesPerson]">
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>