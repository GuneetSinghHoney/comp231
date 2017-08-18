<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="update" %>

<%@ Register Src="~/WebUserControl2.ascx" TagPrefix="uc1" TagName="WebUserControl2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link rel="StyleSheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1 text align="center">YOU CAN UPDATE RECIPE HERE....</h1>

    <h2 align="center">

        UserName: <asp:Label ID="Label6" runat="server"></asp:Label>
    </h2>

     <table align="center"><tr><th> 
         <asp:Label ID="Label1" runat="server"></asp:Label>

         <asp:Label ID="dbErrorMessage" ForeColor="Red" runat="server" /></th></tr></table>
    <br/>

    <table align="center">
        <tr><td></td><td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter New Values</br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to Update</strong></td><td><strong>Old Values</strong></td></tr>
              <tr>
        <th><p align="left">Name of Recipe:</th>
            <th><asp:TextBox ID="NameRecipe" runat="server"></asp:TextBox>
     </th></p><th><text style="color:blue"><asp:Label ID="L1" runat="server"/></text></th>
        </tr>
          <tr>    
            <th><p align="left">Category: </th><th><asp:TextBox ID="Cat" runat="server"></asp:TextBox>
    <br/><asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></th></p><th><text style="color:blue"><asp:Label ID="Label2" runat="server"/></text></th>
         </tr>
        
        <tr><th><p align="left">Prepare/Cooking time: </th><th><asp:TextBox ID="Cooking" runat="server"></asp:TextBox></th></p>
        <th><text style="color:blue"><asp:Label ID="Label3" runat="server"/></text></th></tr>
            
        <tr>
            <th><p align="left">Number of Servings:</th><th><asp:TextBox ID="NS" runat="server"></asp:TextBox></th></p>
           <th><text style="color:blue"><asp:Label ID="Label4" runat="server"/></text></th></tr>
        <tr>
        <th><p align="left">Recipe Description:</th>
            <th>
            <textarea id="TA" cols="20" rows="2" runat="server"></textarea></th></p>
                 <th><text style="color:blue"><asp:Label ID="Label5" runat="server"/></text></th></tr>
   <tr><td></td><td align="center"> <asp:Button ID="B2" runat="server" Text="Save" OnClick="B2_Click"/></td>          
    </table>
    <table align="center" border="1"><tr>
    <td>
        <uc1:WebUserControl2 runat="server" id="WebUserControl2" />
       </td> </tr></table></br>
    </br>    </br>    </br>   

    <table align="center">
    <tr><td></td><td> <asp:Button ID="Button1" runat="server" Text="Done" OnClick="Button1_Click"/></td><td>
</td>
      </tr>  </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

