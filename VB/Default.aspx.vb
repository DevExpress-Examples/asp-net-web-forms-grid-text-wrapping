Imports System
Imports System.Collections.Generic
Imports System.Collections.Specialized
Imports System.ComponentModel
Imports System.Linq
Imports DevExpress.Web.Data
Imports DevExpress.Web.ASPxGridView

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected ReadOnly Property GridData() As List(Of GridDataItem)
        Get
            Dim key = "34FAA431-CF79-4869-9488-93F6AAE81263"
            If (Not IsPostBack) OrElse Session(key) Is Nothing Then
                Session(key) = Enumerable.Range(0, 10).Select(Function(i) New GridDataItem With {.ID = i, .C1 = "This is a simple text " & i.ToString(), .C2 = "This is a simple text " & i.ToString(), .C3 = "This is a simple text " & i.ToString(), .C4 = "This is a simple text " & i.ToString(), .C5 = "ThisIsASimpleEmail@text.com" & i.ToString(), .C6 = "This is a long long simple text " & i.ToString()}).ToList()
            End If
            Return DirectCast(Session(key), List(Of GridDataItem))
        End Get
    End Property
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        Grid.DataSource = GridData
        Grid.DataBind()
    End Sub

    Protected Sub Grid_HtmlDataCellPrepared(ByVal sender As Object, ByVal e As ASPxGridViewTableDataCellEventArgs)
        If e.DataColumn.FieldName = "C6" Then
            If e.CellValue IsNot Nothing Then
                e.Cell.ToolTip = e.CellValue.ToString()
            End If
        End If
    End Sub

    Public Class GridDataItem
        Public Property ID() As Integer
        Public Property C1() As String
        Public Property C2() As String
        Public Property C3() As String
        Public Property C4() As String
        Public Property C5() As String
        Public Property C6() As String
    End Class
End Class