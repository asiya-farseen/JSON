<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loadMoreOption.aspx.cs" Inherits="ajaxDemo.loadMoreOption" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
             <div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>       
<fieldset style="width:365px;">
    <legend>Load more data on demand in repeater</legend>
    <center>
    <table>
    <tr>
    <td>
      <asp:Repeater ID="repeater" runat="server">
        <HeaderTemplate>
        <table border="1" cellpadding="1">
        <tr style="background-color:#fa7b16; color:#FFF; height:35px;" align="center">
        <th>Student Name</th>
        <th>Class</th>
        <th>Age</th>
       
        </tr>
        </HeaderTemplate>
        <ItemTemplate>
        <tr style="background-color:white;" align="center">
        <td><%#Eval("name") %></td>
        <td><%#Eval("class") %></td>
        <td><%#Eval("Age") %></td>
        
        </tr>
        </ItemTemplate>      
        <FooterTemplate>
        </table>       
        </FooterTemplate>
        </asp:Repeater> 
    </td>
    </tr>
    <tr>

    <td align="center">
        <asp:Button ID="btnLoadMore" runat="server" Text="Load More Data"
            onclick="btnLoadMore_Click" />
            </td>
            </tr>
            <tr>
            <td align="center">
            <asp:UpdateProgress ID="UpdateProgress1" runat="server" ClientIDMode="Static" DisplayAfter="10">
    <ProgressTemplate>
        <img src="ajax-loader.gif" alt="wait image" />   
    </ProgressTemplate>
    </asp:UpdateProgress>
            </td></tr>
    </table>
        </center>
    </fieldset>
    </ContentTemplate>   
        </asp:UpdatePanel>   
    </div>   
        
    </form>
</body>
</html>
