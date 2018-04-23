<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
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

        .truncated
        {
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
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
                    <CellStyle Wrap="False"></CellStyle>
                </dx:GridViewDataColumn>
                <dx:GridViewDataColumn FieldName="C2" Width="100" Caption='CSS nowrap'>
                    <CellStyle CssClass="disableWrapping"></CellStyle>
                </dx:GridViewDataColumn>
                <dx:GridViewDataColumn FieldName="C3" Width="100" Caption='Wrap="True"'>
                    <CellStyle Wrap="True"></CellStyle>
                </dx:GridViewDataColumn>
                <dx:GridViewDataColumn FieldName="C4" Width="100" Caption='CSS normal'>
                    <CellStyle CssClass="enableWrapping"></CellStyle>
                </dx:GridViewDataColumn>
                <dx:GridViewDataColumn FieldName="C5" Width="100" Caption='CSS break-all'>
                    <CellStyle CssClass="wrapEmail"></CellStyle>
                </dx:GridViewDataColumn>
                <dx:GridViewDataColumn FieldName="C6" Width="100" Caption='Truncated text'>
                    <DataItemTemplate>
                        <div class="truncated" style="width: 100px">
                            <%# Eval("C6") %>
                        </div>
                    </DataItemTemplate>
                    <CellStyle CssClass="truncated"></CellStyle>
                </dx:GridViewDataColumn>
            </Columns>
        </dx:ASPxGridView>
    </form>
</body>
</html>
