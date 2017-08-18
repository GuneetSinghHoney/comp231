<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="re.aspx.cs" Inherits="re" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="StyleSheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="1">
        <tr>
            <td>
                <strong>Request</strong>
                </td>
            <td>
                <strong>Reply</strong>
                </td>

            </tr>
        <tr><td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                <textarea id="txt" cols="15" rows="10" runat="server"></textarea>
            </td></tr>
        <tr><td></td><td align="center">
            <asp:Button ID="Button1" runat="server" Text="Reply" OnClick="Button1_Click" />
                     </td></tr>
        </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

