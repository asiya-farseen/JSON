<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newPassword.aspx.cs" Inherits="ajaxDemo.newPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>
        .BarBorder{
            border:2px black ridge;
            width:120px;
        }        
        .Poor{
            background-color:darkred;
        }
        .Weak{
            background-color:red;
        }
        .Average{
            background-color:yellow;
        }
        .Nice{
            background-color:lightgreen;
        }
        .Strong{
            background-color:green;
        }
          </style>
  
</head>
<body>
      
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>


                <asp:Label ID="Label1" runat="server" Text="ENETR PASSWORD"></asp:Label>
                <asp:TextBox ID="password" runat="server"></asp:TextBox>
                
                <ajaxToolkit:PasswordStrength ID="PasswordStrength1" runat="server" TextStrengthDescriptions="Poor;Weak;Average;Nice;Strong" StrengthIndicatorType="BarIndicator" BarBorderCssClass="BarBorder" MinimumLowerCaseCharacters="3" MinimumNumericCharacters="1" MinimumSymbolCharacters="1" MinimumUpperCaseCharacters="1" PreferredPasswordLength="6" PrefixText="PASSWORD STRENGTH" TargetControlID="password" HelpStatusLabelID="Label2" BarIndicatorCssClass="Poor" StrengthStyles="Poor;Weak;Average;Nice;Strong" />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
