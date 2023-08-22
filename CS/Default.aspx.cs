using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Linq;
using DevExpress.Web.Data;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page {
    protected List<GridDataItem> GridData {
        get {
            var key = "34FAA431-CF79-4869-9488-93F6AAE81263";
            if (!IsPostBack || Session[key] == null)
                Session[key] = Enumerable.Range(0, 10).Select(i => new GridDataItem {
                    ID = i,
                    C1 = "This is a simple text " + i.ToString(),
                    C2 = "This is a simple text " + i.ToString(),
                    C3 = "This is a simple text " + i.ToString(),
                    C4 = "This is a simple text " + i.ToString(),
                    C5 = "ThisIsASimpleEmail@text.com" + i.ToString(),
                    C6 = "This is a long long simple text " + i.ToString(),
                }).ToList();
            return (List<GridDataItem>)Session[key];
        }
    }
    protected void Page_Load(object sender, EventArgs e) {
        Grid.DataSource = GridData;
        Grid.DataBind();
    }
    protected void Grid_HtmlDataCellPrepared(object sender, ASPxGridViewTableDataCellEventArgs e) {
        if (e.DataColumn.FieldName == "C6")
            if (e.CellValue != null)
                e.Cell.ToolTip = e.CellValue.ToString();
    }
    public class GridDataItem {
        public int ID { get; set; }
        public string C1 { get; set; }
        public string C2 { get; set; }
        public string C3 { get; set; }
        public string C4 { get; set; }
        public string C5 { get; set; }
        public string C6 { get; set; }
    }
}
