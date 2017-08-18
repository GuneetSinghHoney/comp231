<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="uping.aspx.cs" Inherits="uping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="StyleSheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <br/>
    <br/>
    <br/>
    <br/>
    <table align="center">
        <tr><td></td><td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter New Values</br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to Update</strong></td><td><strong>Old Values</strong></td></tr>
              <tr>
        <th><p align="left">Ingredients:</th>
            <th><asp:TextBox ID="N" runat="server"></asp:TextBox>
     </th></p><th><text style="color:blue"><asp:Label ID="L1" runat="server"/></text></th>
        </tr>
          <tr>    
            <th><p align="left">Quantity: </th><th><asp:TextBox ID="Q" runat="server"></asp:TextBox></th></p><th><text style="color:blue"><asp:Label ID="Label2" runat="server"/></text></th>
         </tr>
        
        <tr><th><p align="left">Unit: </th><th><asp:TextBox ID="U" runat="server"></asp:TextBox></th></p>
        <th><text style="color:blue"><asp:Label ID="Label3" runat="server"/></text></th></tr>
      <tr><td></td><td align="center">  <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" /></td></tr>
  </table>
    <p aign="center">
    <asp:Label ID="Label1" runat="server"></asp:Label>

    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

