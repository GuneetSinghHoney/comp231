<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="rooms.aspx.cs" Inherits="rooms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <link rel="StyleSheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Repeater id="myrepeater" runat="server">
            <ItemTemplate>
 
                <table border="1" style="background-color:white">
               <tr>

              
            <td><strong>Id</strong>
         </td><td><strong>Room Number
         </td><td><strong>Room Type

        </tr>
                             <tr>
         <td><strong><%#Eval("id")%></strong>
         </td><td><%#Eval("RoomNumber")%>
         </td><td> <%#Eval("RoomType")%>
           
        </tr>                                    
             </table>
              </ItemTemplate>
              </asp:Repeater></p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

