<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="StyleSheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center"><br/><br/>    <strong>Submitted By: </strong> <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
    <strong>Category: </strong>  <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
      <strong>Name Of Ingredients: </strong> <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList></p>
      
    <p align="center">
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/>
   <br/><h2 align="center"> <asp:Label ID="Label1" runat="server"></asp:Label></h2>
   </p>
     <p align="center">
    <table style="background-image:url(red1.jpg)" border="1" align="center"><tr><td>
      
         <asp:Repeater id="myrepeater" runat="server">
            <ItemTemplate>
 </br>
       Name: <strong><%#Eval("Name")%></strong><br />
         Category:        <%#Eval("Category")%><br />
           Time:  <%#Eval("Prep_time")%><br/>
                 Servings:      <%#Eval("Servings")%><br/>
                 Description:   <%#Eval("Description")%><br/>
             Ingredients:  <%#Eval("Ingredients")%><br/>
                ------------------------------------------------
              </ItemTemplate>
              </asp:Repeater></p>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

