<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ratingControls.aspx.cs" Inherits="ajaxDemo.ratingControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 196px;
        }
        .Estar{
            background-image:url('images/icons8-christmas-star-50.png');
            height:50px;
            width:50px;
        }
        .Fstar{
            background-image:url('images/icons8-hand-drawn-star-50.png');
            height:50px;
            width:50px;
        }

       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style2">Rate our website:</td>
                    <td>
                        <ajaxToolkit:Rating ID="Rating1" runat="server" CurrentRating="1" AutoPostBack="True" StarCssClass="Estar" FilledStarCssClass="Fstar" EmptyStarCssClass="Estar" WaitingStarCssClass="Fstar" OnClick="Rating1_Click">
                    </ajaxToolkit:Rating>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Font-Size="Larger" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

