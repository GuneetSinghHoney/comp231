<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="recipe.aspx.cs" Inherits="recipe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="StyleSheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 text align="center">RECIPE....</h1>

    <h2 text align="center">List of Recipes:</h2>

        <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RECIPE BOOK DETAILS.....</h1>

     <table align="center" border="1""><tr style="background-color:crimson"><td><strong>Recipe Name</strong></td><td><strong>Submitted By</strong></td><td><strong>Preperation/Cooking Time</strong></td><td></td><td></td></tr>
        <asp:Repeater id="myrepeater" runat="server">
                     <ItemTemplate>
               <tr><td><a href="sr.aspx?id=<%#Eval("ID") %>"><strong><%#Eval("Name")%></strong><br /></td>
 
                <td> <strong><%#Eval("Submit")%></strong><br /></td>
 
      <td>
          <strong><%#Eval("Prep_time")%></strong></td>
                   <td><a href="update.aspx?id=<%#Eval("ID") %>"">Update...</a></td>
       <td>

           <a href="delete.aspx?id=<%#Eval("ID") %>"">Delete...</a></td>
                    
 </tr>
            </ItemTemplate>
                   

</asp:Repeater>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>