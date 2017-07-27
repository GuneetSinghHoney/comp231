<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Second.aspx.cs" Inherits="Second" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <link rel="StyleSheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Table ID="mytable" runat="server">
        <asp:TableRow>
             <asp:TableCell>
                  <asp:Label ID="Label1" runat="server" Text="Select Room"></asp:Label>
             </asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="roomList" runat="server"></asp:DropDownList>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="roomatebt" runat="server" OnClick="roomatebt_Click" Text="See Room Mates" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                  <asp:Label ID="Label2" runat="server" Text="Select Room Type"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                
    <asp:DropDownList ID="RoomTypes" runat="server" >
             
                <asp:ListItem Selected="true" Value="one"> 1BHK </asp:ListItem>
                  <asp:ListItem Value="two"> 2BHK </asp:ListItem>
                  <asp:ListItem Value="three"> 3BHK </asp:ListItem>
        </asp:DropDownList>
            </asp:TableCell>
            <asp:TableCell>
                  <asp:Button ID="submit" OnClick="submit_Click" runat="server" Text="Book" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    
   <asp:Label id ="message" runat="server" Text=""></asp:Label>
    
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

