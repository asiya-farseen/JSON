<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3_practice_GettingStarted.aspx.cs" Inherits="ajaxDemo._3_practice_GettingStarted" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="normal" runat="server" Text="NORMAL" />
        </div>
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate> <asp:Button ID="ajax" runat="server" Text="AJAX" /></ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
  
        
</body>
</html>
