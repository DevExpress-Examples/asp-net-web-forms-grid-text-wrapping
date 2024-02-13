<%@ Page Language="VB" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v22.2, Version=22.2.11.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .disableWrapping
        {
            white-space: nowrap;
        }
        .enableWrapping
        {
            white-space: normal;
        }
        .wrapEmail
        {
            word-break: break-all;
        }
    </style>
</head>
<body>
    <form id="frmMain" runat="server">
        <dx:ASPxGridView ID="Grid" runat="server" KeyFieldName="ID" OnHtmlDataCellPrepared="Grid_HtmlDataCellPrepared">
            <Styles>
                <Header HorizontalAlign="Center" Font-Bold="true"></Header>
            </Styles>
            <Columns>
                <dx:GridViewDataColumn FieldName="C1" Width="100" Caption='Wrap="False"'>
                    <CellStyle Wrap="False" />
                </dx:GridViewDataColumn>
                <dx:GridViewDataColumn FieldName="C2" Width="100" Caption='CSS nowrap'>
                    <CellStyle CssClass="disableWrapping" />
                </dx:GridViewDataColumn>
                <dx:GridViewDataColumn FieldName="C3" Width="100" Caption='Wrap="True"'>
                    <CellStyle Wrap="True" />
                </dx:GridViewDataColumn>
                <dx:GridViewDataColumn FieldName="C4" Width="100" Caption='CSS normal'>
                    <CellStyle CssClass="enableWrapping" />
                </dx:GridViewDataColumn>
                <dx:GridViewDataColumn FieldName="C5" Width="100" Caption='CSS break-all'>
                    <CellStyle CssClass="wrapEmail" />
                </dx:GridViewDataColumn>
                <dx:GridViewDataColumn FieldName="C6" Width="100" Caption='Truncated text'>
                    <Settings AllowEllipsisInText="true" />
                </dx:GridViewDataColumn>
            </Columns>
        </dx:ASPxGridView>
    </form>
</body>
</html>
