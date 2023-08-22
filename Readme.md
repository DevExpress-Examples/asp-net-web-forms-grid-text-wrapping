<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T175881)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->

# Grid Control for ASP.NET Web Forms - How to set text wrapping in different ways
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t175881/)**
<!-- run online end -->

The suggested techniques are common and may be used not only for [ASPxGridView](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxGridView) but for other controls in the same way.

![Wrapped text](grid-wrap-text.png)

## Turn off text wrapping

Disable text wrapping to show text in one line. Set a column's [CellStyle.Wrap](https://docs.devexpress.com/AspNet/DevExpress.Web.AppearanceStyleBase.Wrap) property to `False` for this purpose.

```ASPx
<dx:GridViewDataColumn FieldName="C1" Width="100">  
    <CellStyle Wrap="False" />
</dx:GridViewDataColumn> 
```

You can specify the CSS `white-space` property to `nowrap` to get the same result.

```CSS
.disableWrapping {  
    white-space: nowrap;  
}
```
  
```ASPx
<dx:GridViewDataColumn FieldName="C2" Width="100">  
    <CellStyle CssClass="disableWrapping" />
</dx:GridViewDataColumn>
```

Note that when text wrapping is disabled, the column's `Width` property in not in effect.

## Enable text wrapping

Enable wrapping for a cell text to have the fixed column width. Set the column's [CellStyle.Wrap](https://docs.devexpress.com/AspNet/DevExpress.Web.AppearanceStyleBase.Wrap) property to `True`.

```ASPx
<dx:GridViewDataColumn FieldName="C3" Width="100">  
    <CellStyle Wrap="True" />
</dx:GridViewDataColumn>
``` 

You can specify the CSS `white-space` property to `normal` to get the same result.

```CSS
.enableWrapping {  
    white-space: normal;  
}
```

```ASPx
<dx:GridViewDataColumn FieldName="C4" Width="100">  
    <CellStyle CssClass="enableWrapping" />  
</dx:GridViewDataColumn>  
```

## Wrap text without white spaces

The previous approach works only if a cell text contains white spaces. To wrap text that does not contain white spaces, use the CSS `word-break` property.

```CSS
.wrapEmail {  
    word-break: break-all;  
}
``` 
```ASPx
<dx:GridViewDataColumn FieldName="C5" Width="100">  
    <CellStyle CssClass="wrapEmail" />
</dx:GridViewDataColumn>  
```

## Show a truncated text

If a grid's column resizing feature is enabled, you can use recommendations from the ASPxGridView - How to display truncated text in a resizable column (using CSS) example. Otherwise, use the approach suggested in the ASPxGridView - How to display a truncated text in a column example. Alternatively, you can use the column's DataItem template to truncate text with CSS when column resizing is disabled:

Set the [ASPxGridView.SettingsBehavior.AllowEllipsisInText](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxGridBehaviorSettings.AllowEllipsisInText) property to to `true` to automatically truncate cell texts if they do not fit into the cell width. To indicate that the text is clipped, the control displays an ellipsis (`…`).

## Files to Review

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
