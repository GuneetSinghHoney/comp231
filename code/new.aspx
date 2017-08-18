<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="new.aspx.cs" Inherits="new" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="StyleSheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p><a href="recipe.aspx">Click here to get Details of recipes...</a></p>
<table align="center">
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Name of Ingredients</b></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Quantity</b></td><td><b>Unit of measure (kg, g, l, cups, pieces …)</b></td></tr>

        <tr>
            <td><asp:TextBox ID="NOI1" runat="server" Width="211px"></asp:TextBox></td>
            <td><asp:TextBox ID="QUAN1" runat="server" Width="331px"></asp:TextBox></td>
            <td><asp:TextBox ID="UOM1" runat="server" Width="320px" CssClass="auto-style1"></asp:TextBox></td>
      
            </tr>
    <tr><th><asp:RequiredFieldValidator id="NameIng1" runat="server" ControlToValidate="NOI1" ErrorMessage="Field cannot be blank!!!" /></th><th> <asp:CompareValidator id="Quant1" runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="QUAN1" ErrorMessage="Quantity Field should be integer value!!!" />
    </th></td>
        <td></td>
        <td>

        </td>
        </tr>
<tr>
            <td><asp:TextBox ID="NOI2" runat="server" Width="211px"></asp:TextBox></td>
            <td><asp:TextBox ID="QUAN2" runat="server" Width="331px"></asp:TextBox></td>
            <td><asp:TextBox ID="UOM2" runat="server" Width="320px" CssClass="auto-style1"></asp:TextBox></td>
      
            </tr>
    <tr><th><asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="NOI2" ErrorMessage="Field cannot be blank!!!" /></th><th> <asp:CompareValidator id="CompareValidator1" runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="QUAN2" ErrorMessage="Quantity Field should be integer value!!!" />
    </th></td>
        <td></td>
        <td>

        </td>
        </tr>
    <tr>
            <td><asp:TextBox ID="NOI3" runat="server" Width="211px"></asp:TextBox></td>
            <td><asp:TextBox ID="QUAN3" runat="server" Width="331px"></asp:TextBox></td>
            <td><asp:TextBox ID="UOM3" runat="server" Width="320px" CssClass="auto-style1"></asp:TextBox></td>
      
            </tr>
    <tr><th><asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="NOI3" ErrorMessage="Field cannot be blank!!!" /></th><th> <asp:CompareValidator id="CompareValidator2" runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="QUAN3" ErrorMessage="Quantity Field should be integer value!!!" />
    </th></td>
        <td></td>
        <td>

        </td>
        </tr>        
</table>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

