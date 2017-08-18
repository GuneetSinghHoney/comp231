<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="StyleSheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="1">
    <tr>
        <td align="center"><strong>Student-Id</strong></td>
        <td align="center"><strong>Supervisor's Id</strong></td>
        <td align="center"><strong>Requests</strong></td>
        <td align="center"><strong>Responses</strong></td>
            
    </tr>
        <asp:Repeater id="myrepeater" runat="server">
            <ItemTemplate>

         <tr>
         <td><%#Eval("Id")%></td>
                  <td><%#Eval("empId")%></td>
         <td><%#Eval("msg")%>
         <td><%#Eval("resp")%>
             
             </tr>        
              </ItemTemplate>
              </asp:Repeater>
             
    </table>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

