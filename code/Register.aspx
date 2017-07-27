<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url(bg.jpg)">
    <form id="form1" runat="server">
    <div> <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1"><strong>. . .DORM. .
         .</strong></span>
      </h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;
        Fields with asterisk(</strong><text style="color:red"><strong>*</strong></text><strong>) are mendatory:
       </strong>
       <table align="center" border ="0" >

<tr><td> <text style="color:red"><strong>*</strong></text> First Name: </td><td><asp:TextBox ID="fname" runat="server"></asp:TextBox></td><td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
            ControlToValidate="fname"
            ErrorMessage="Cannot be empty." 
            runat="server" /></strong></td></tr>
        <tr><td><text style="color:red"><strong>*</strong></text> Last Name: </td><td><asp:TextBox ID="lname" runat="server"></asp:TextBox></td><td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator12" 
            ControlToValidate="lname"
            ErrorMessage="Cannot be empty." 
            runat="server" /></strong></td></tr>
        
        <tr><td><text style="color:red"><strong>*</strong></text> Username: </td><td><asp:TextBox ID="User" runat="server"></asp:TextBox></td><td>
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            ControlToValidate="User"
            ErrorMessage="Cannot be empty." 
            runat="server" />
            </strong>
        </td></tr>
        <tr><td><text style="color:red"><strong>*</strong></text> Password: </td><td><asp:TextBox ID="pass" TextMode="Password"  runat="server"></asp:TextBox></td><td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            ControlToValidate="pass"
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
                 </div>
    </form>
</body>
</html>
