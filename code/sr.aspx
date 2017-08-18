<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sr.aspx.cs" Inherits="sr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="StyleSheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2>

        <asp:Label ID="Label1" runat="server"></asp:Label>
    </h2>

    <table align="center" border="1">
        <tr style="background-color:crimson"><td><strong>Recipe Name</strong></td><td><strong>Category</strong></td><td><strong>Preperation/Cooking Time</strong></td><td><strong>No. of Servings</strong></td><td><strong>Description</strong></td></tr>
        <asp:Repeater id="myrepeater" runat="server">
          <ItemTemplate>
   <tr><td>
       <strong><%#Eval("Name")%></strong><br /></td>
                 <td> <%#Eval("Category")%><br /></td>
      <td>         <%#Eval("Prep_time")%></td>
             <td>         <%#Eval("Servings")%></td>
             <td>         <%#Eval("Description")%></td>
 </tr>
            </ItemTemplate>
          </asp:Repeater>
        <br/>
<br/>
<br/>
<br/>
<br/>
<br/>
        </table>
         <table align="center" border="1">
        <tr style="background-color:crimson"><td><strong>Ingredients</strong></td><td><strong>Quantity</strong></td><td><strong>Units of measure(kg,gm,..)</strong></td></tr>
     
             <asp:Repeater id="Repeater1" runat="server">
          <ItemTemplate>
   <tr><td>
       <strong><%#Eval("Ingredients")%></strong><br /></td>
                 <td> <%#Eval("Quantity")%><br /></td>
      <td>         <%#Eval("Unit")%></td>
 </tr>
            </ItemTemplate>
          
            

</asp:Repeater>
    </table>         
         <table align="center" border="0">
        <tr><td></td><td></td><td></td></tr>
        <asp:Repeater id="Repeater2" runat="server">
          <ItemTemplate>
   <tr><td>
       <img src='<%#Eval("filepath")%>' style="width:200px;height:200px"/></td> </tr>
            </ItemTemplate>
          
            

</asp:Repeater>
             <asp:Label ID="Label2" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

