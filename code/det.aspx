<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="det.aspx.cs" Inherits="det" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="StyleSheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/> 
    <br/> 

    <table align="center" border="0" style="background-color:lightseagreen">
         
             <asp:Repeater id="myrepeater" runat="server">
                     <ItemTemplate>
                                                <tr><td>UserName: </td><td><strong><%#Eval("Username")%></strong><br /></td>
                             <td></td></tr>
                         <tr><td>Name: </td><td><strong><%#Eval("fname")%></strong><strong>&nbsp;&nbsp;<%#Eval("lname")%></strong><br /></td></tr>
                                                <tr><td>Email: </td><td><strong><%#Eval("email")%></strong><br /></td>
                             <td></td></tr> 
                                                <tr><td>Contact: </td><td><strong><%#Eval("contact")%></strong><br /></td>
                             <td></td></tr>   
                                            <tr><td>Address: </td><td></td><td></td></tr>
                                                <tr><td>House: </td><td><strong><%#Eval("House")%></strong><br /></td>
                             <td></td></tr>
                                                <tr><td>Street: </td><td><strong><%#Eval("Street")%></strong><br /></td>
                             <td></td></tr>
                                                <tr><td>Province: </td><td><strong><%#Eval("Province")%></strong><br /></td>
                             <td></td></tr>
                                                <tr><td>Country: </td><td><strong><%#Eval("Country")%></strong><br /></td>
                             <td></td></tr>
                                                <tr><td>Zip Code: </td><td><strong><%#Eval("code")%></strong><br /></td>
                             <td></td></tr>
            </ItemTemplate>
    
</asp:Repeater>
        
        <asp:Button ID="edit" runat="server" Text="Edit" OnClick="edit_Click"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

