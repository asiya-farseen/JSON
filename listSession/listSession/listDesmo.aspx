<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listDesmo.aspx.cs" Inherits="listSession.listDesmo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
    <style type="text/css">
        .auto-style1 {
            width: 550%;
        }
        .auto-style2 {
            width: 294px;
        }
        .MyPromptCss{
            font-style:italic;
            font-weight:bold;
           
            color:purple;
            background-color:lightgray;
        }
    </style>
</head>
<body>
 <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style2">CHOOSE FRUIT</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="276px">
                              <asp:ListItem>WaterMelon</asp:ListItem>
                           <asp:ListItem>Orange</asp:ListItem>
                           <asp:ListItem>Mango</asp:ListItem>
                           <asp:ListItem>Apple</asp:ListItem>
                           <asp:ListItem>Papaya</asp:ListItem>
                         <asp:ListItem>Kiwi</asp:ListItem>
                         <asp:ListItem>Papaya</asp:ListItem>
                              <asp:ListItem>Banana</asp:ListItem>
                           <asp:ListItem>Strawberry</asp:ListItem>
                           <asp:ListItem>Guava</asp:ListItem>
                           <asp:ListItem>Pineapple</asp:ListItem>
                           <asp:ListItem>Grapes</asp:ListItem>
                         <asp:ListItem>Pear</asp:ListItem>
                         <asp:ListItem>Musk Melon</asp:ListItem>
                        </asp:DropDownList>
                        <ajaxToolkit:ListSearchExtender ID="DropDownList1_ListSearchExtender" runat="server" BehaviorID="DropDownList1_ListSearchExtender" TargetControlID="DropDownList1">
                        </ajaxToolkit:ListSearchExtender>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:ListBox ID="ListBox1" runat="server" Height="202px" Width="269px">
                        <asp:ListItem>WaterMelon</asp:ListItem>
                           <asp:ListItem>WaterMelon</asp:ListItem>
                           <asp:ListItem>Orange</asp:ListItem>
                           <asp:ListItem>Mango</asp:ListItem>
                           <asp:ListItem>Apple</asp:ListItem>
                           <asp:ListItem>Papaya</asp:ListItem>
                         <asp:ListItem>Kiwi</asp:ListItem>
                         <asp:ListItem>Papaya</asp:ListItem>
                             <asp:ListItem>Banana</asp:ListItem>
                           <asp:ListItem>Strawberry</asp:ListItem>
                           <asp:ListItem>Guava</asp:ListItem>
                           <asp:ListItem>Pineapple</asp:ListItem>
                           <asp:ListItem>Grapes</asp:ListItem>
                         <asp:ListItem>Pear</asp:ListItem>
                         <asp:ListItem>Musk Melon</asp:ListItem>
                        </asp:ListBox>


                        <ajaxToolkit:ListSearchExtender ID="ListBox1_ListSearchExtender" runat="server" BehaviorID="ListBox1_ListSearchExtender" TargetControlID="ListBox1" PromptCssClass="  MyPromptCss">
                        </ajaxToolkit:ListSearchExtender>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
        