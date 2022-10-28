<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loadMore.aspx.cs" Inherits="ajaxDemo.loadMore" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Repeater ID="RepeatInformation" runat="server">  
            <HeaderTemplate>  
                <table class="tblcolor">  
                    <tr>  
                        <b>  
                            <td>  
                                ID  
                            </td>  
                            <td>  
                                Student Name  
                            </td>  
                            <td>  
                                class 
                            </td>  
                             <td>  
                                Age 
                            </td>
                        </b>  
                    </tr>  
            </HeaderTemplate>  
            <ItemTemplate>  
                <tr class="tblrowcolor">  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.id")%>  
                    </td>  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.name")%>  
                    </td>  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.class")%>  
                    </td>  
                     <td>  
                        <%#DataBinder.Eval(Container,"DataItem.age")%>  
                    </td>
                </tr>  
            </ItemTemplate>  
            <SeparatorTemplate>  
                <tr>  
                    <td>  
                        <hr />  
                    </td>  
                    <td>  
                        <hr />  
                    </td>  
                    <td>  
                        <hr />  
                    </td> 
                    <td>  
                        <hr />  
                    </td>
                </tr>  
            </SeparatorTemplate>  
            <AlternatingItemTemplate>  
                <tr>  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.id")%>  
                    </td>  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.name")%>  
                    </td>  
                    <td>  
                        <%#DataBinder.Eval(Container,"DataItem.class")%>  
                    </td>  
                     <td>  
                        <%#DataBinder.Eval(Container,"DataItem.age")%>  
                    </td>
                </tr>  
            </AlternatingItemTemplate>  
            <SeparatorTemplate>  
                <tr>  
                    <td>  
                        <hr />  
                    </td>  
                    <td>  
                        <hr />  
                    </td>  
                    <td>  
                        <hr />  
                    </td>  
                     <td>  
                        <hr />  
                    </td>
                </tr>  
            </SeparatorTemplate>  
            <FooterTemplate>  
                <tr>  
                    <td>  
                        School Records displayed  
                    </td>  
                </tr>  
                </table>  
            </FooterTemplate>  
        </asp:Repeater>  
    </div>  
       
    </form>
</body>
</html>
