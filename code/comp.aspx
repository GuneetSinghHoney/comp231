<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="comp.aspx.cs" Inherits="comp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <link rel="StyleSheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <p align="center">
    <a href="resp.aspx?id=<%#Eval("Id")%>">View responses and requests....</a>
          </p>
    
    <table align="center">
        <tr><td>Request: </td><td><textarea id="tx" cols="50" rows="10" runat="server"></textarea></td><td>
            <asp:button runat="server" text="Send" OnClick="Unnamed1_Click" />
        </td></tr>
        </td></tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

