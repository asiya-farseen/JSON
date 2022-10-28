<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="passwordStrength.aspx.cs" Inherits="ajaxDemo.passwordStrength" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="Label1" runat="server" Text="ENTER PASSWORD"></asp:Label>
                <asp:TextBox ID="password" runat="server"></asp:TextBox>
                <ajaxToolkit:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="password" MinimumLowerCaseCharacters="2" MinimumNumericCharacters="2" MinimumSymbolCharacters="1" MinimumUpperCaseCharacters="1" PreferredPasswordLength="6" PrefixText="Password Strength: " DisplayPosition="RightSide" />

            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
