<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="autoComplete.aspx.cs" Inherits="ajaxDemo.autoComplete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="SELECT CITY"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <ajaxToolkit:AutoCompleteExtender ID="TextBox1_AutoCompleteExtender" runat="server" BehaviorID="TextBox1_AutoCompleteExtender" CompletionInterval="100" DelimiterCharacters="" MinimumPrefixLength="1" ServiceMethod="GetCompletionList" ServicePath="" TargetControlID="TextBox1">
                        </ajaxToolkit:AutoCompleteExtender>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="submit" runat="server" Text="SUBMIT" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
