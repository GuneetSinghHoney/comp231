<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="addemp.aspx.cs" Inherits="addemp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link rel="StyleSheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;
        Fields with asterisk(</strong><text style="color:red"><strong>*</strong></text><strong>) are mendatory:
       </strong>
       <table align="center" border ="0" >


           <tr><td> Role: </td>
               <td>
                   <asp:DropDownList ID="DropDownList1" runat="server">
                       <asp:ListItem>--Select--</asp:ListItem>
                       <asp:ListItem>Frontdesk</asp:ListItem>
                       <asp:ListItem>Supervisor</asp:ListItem>
                   </asp:DropDownList>
               </td>
               <td></td></tr>
         <tr><td> <text style="color:red"><strong>*</strong></text> First Name: </td><td><asp:TextBox ID="fname" runat="server"></asp:TextBox></td><td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
            ControlToValidate="fname"
            ErrorMessage="Cannot be empty." 
            runat="server" /></strong></td></tr>
        <tr><td><text style="color:red"><strong>*</strong></text> Last Name: </td><td><asp:TextBox ID="lname" runat="server"></asp:TextBox></td><td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator12" 
            ControlToValidate="lname"
            ErrorMessage="Cannot be empty." 
            runat="server" /></strong></td></tr>
        
        <tr><td><text style="color:red"><strong>*</strong></text> User Name: </td><td><asp:TextBox ID="User" runat="server"></asp:TextBox></td><td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            ControlToValidate="User"
            ErrorMessage="Cannot be empty." 
            runat="server" /></strong></td></tr>
        <tr><td><text style="color:red"><strong>*</strong></text> Password: </td><td><asp:TextBox ID="pswd" runat="server"></asp:TextBox></td><td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            ControlToValidate="pswd"
            ErrorMessage="Cannot be empty." 
            runat="server" /></strong></td></tr>
        
        <tr><td><text style="color:red"><strong>*</strong></text> House: </td><td><asp:TextBox ID="house" runat="server"></asp:TextBox></td><td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
            ControlToValidate="house"
            ErrorMessage="Cannot be empty." 
            runat="server" /></strong></td></tr>
        <tr><td><text style="color:red"><strong>*</strong></text> Street: </td><td><asp:TextBox ID="st" runat="server"></asp:TextBox></td><td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator9" 
            ControlToValidate="st"
            ErrorMessage="Cannot be empty." 
            runat="server" /></strong></td></tr>
      <tr><td><text style="color:red"><strong>*</strong></text> City: </td><td><asp:TextBox ID="ct" runat="server"></asp:TextBox></td><td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator10" 
            ControlToValidate="ct"
            ErrorMessage="Cannot be empty." 
            runat="server" /></strong></td></tr>
        <tr><td><text style="color:red"><strong>*</strong></text> Province: </td><td><asp:TextBox ID="prov" runat="server"></asp:TextBox></td><td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator11" 
            ControlToValidate="prov"
            ErrorMessage="Cannot be empty." 
            runat="server" /></strong></td></tr>
          
           <tr><td><text style="color:red"><strong>*</strong></text> Postal Code: </td><td><asp:TextBox ID="code" runat="server"></asp:TextBox></td><td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
            ControlToValidate="code"
            ErrorMessage="Cannot be empty." 
            runat="server" /></strong>&nbsp;</td></tr> 
        <tr><td><text style="color:red"><strong>*</strong></text> Country: </td><td><asp:TextBox ID="count" runat="server"></asp:TextBox></td><td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator7" 
            ControlToValidate="count"
            ErrorMessage="Cannot be empty." 
            runat="server" /></strong></td></tr>
        
           <tr><td><text style="color:red"><strong>*</strong></text> Contact: </td><td><asp:TextBox ID="cont" runat="server"></asp:TextBox></td><td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator8" 
            ControlToValidate="cont"
            ErrorMessage="Cannot be empty." 
            runat="server" /></strong></td></tr>
           <tr><td><text style="color:red"><strong>*</strong></text> Email: </td><td>&nbsp;<asp:TextBox ID="email" runat="server"></asp:TextBox></td><td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
            ControlToValidate="email"
            ErrorMessage="Cannot be empty." 
            runat="server" /></strong></td></tr>
        
        <tr><td></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="RegisterClick"/></td></tr>
       </table>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

