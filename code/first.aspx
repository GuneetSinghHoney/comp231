﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="first.aspx.cs" Inherits="first" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="StyleSheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <table align="left" border="0">
        
             <asp:Repeater id="myrepeater" runat="server">
                     <ItemTemplate>
               <h1>Welcome....</h1>
                         <tr><td><strong><%#Eval("fname")%></strong><br /></td><td><strong><%#Eval("lname")%></strong><br /></td>

                    
 </tr>
            </ItemTemplate>
    
</asp:Repeater> 

          <asp:Label runat="server" Text="ROOM BOOKED:"></asp:Label>
                 <asp:Label ID="bookedRoom" runat="server" Text="x         "></asp:Label>
         </ br>
         <asp:Button ID="Button1" runat="server" Text="Print Bill" OnClick="Button1_Click"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

