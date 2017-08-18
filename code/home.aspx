<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="StyleSheet" type="text/css" href="StyleSheet.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 text align="center">HOME</h1>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h2 align="center">
        Welcome <asp:Label ID="Label1" runat="server"></asp:Label></h2>
    <p align=""><h2>

        This is home page of the Website
        

                </h2>


        </br>
        <h3> You can add new Recipe here, you can search for them and others can learn how to cook your recipe</h3>
</asp:Content>
