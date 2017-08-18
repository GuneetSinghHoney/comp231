<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="modemp.aspx.cs" Inherits="modemp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link rel="StyleSheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="1" align="center">
        <tr><td>Id: </td><td>
            <asp:label runat="server" ID="L1"></asp:label>

                         </td></tr>
        
        <tr><td>User Name: </td><td>
            <asp:label runat="server" ID="L2"></asp:label>
                    </td></tr>
        
        <tr><td>First Name: </td><td>
    <asp:textbox runat="server" ID="textbox11"></asp:textbox>
            </td></tr>
        <tr><td>Last Name: </td><td>
    <asp:textbox runat="server" ID="textbox12"></asp:textbox>
            </td></tr>
                <tr><td>Password: </td><td>
    <asp:textbox runat="server" ID="textbox1"></asp:textbox>
            </td></tr>
        <tr><td>Contact: </td><td>
                <asp:textbox runat="server" ID="textbox2"></asp:textbox>
            </td></tr>
        <tr><td>Email: </td><td>
                <asp:textbox runat="server" ID="textbox3"></asp:textbox>
            </td></tr>
        <tr><td>House: </td><td>
                <asp:textbox runat="server" ID="textbox4"></asp:textbox>
            </td></tr>
        <tr><td>Street</td><td>
                <asp:textbox runat="server" ID="textbox5"></asp:textbox>
            </td></tr>
        <tr><td>City</td><td>
                <asp:textbox runat="server" ID="textbox6"></asp:textbox>
            </td></tr>
        <tr><td>Province</td><td>
                <asp:textbox runat="server" ID="textbox7"></asp:textbox>
            </td></tr>
        <tr><td>Country</td><td>
                <asp:textbox runat="server" ID="textbox9"></asp:textbox>
            </td></tr>
        <tr><td>Zip Code: </td><td>
                <asp:textbox runat="server" ID="textbox10"></asp:textbox>
                        </td></tr>
                  <tr><td></td><td align="center">
                      <asp:button runat="server" text="Update" OnClick="Unnamed1_Click"/>
                               </td></tr>
      
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

