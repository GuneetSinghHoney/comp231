<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="student2.aspx.cs" Inherits="student2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="StyleSheet" type="text/css" href="StyleSheet.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center">
             <h3 align="left">List of Students:</h3>
    
           
 </p>           <table border="1" style="background-color:white">
          
         <tr>

              
            <td><strong> Student Id</strong>
         </td><td><strong>Username
         </td><td><strong>First Name 
             </td><td><strong>Last Name
                  </td><td><strong>Password
                </td><td> <strong>Contact   
                </td><td> <strong>Email
                    </td><td><strong> House
                        </td><td> <strong>Street 
                            </td><td> <strong>City 
                                </td><td> <strong>Province
                                    </td><td> <strong>Country  
                                        </td><td> <strong>Zipcode
                                   </tr>
          
         <asp:Repeater id="myrepeater" runat="server">
            <ItemTemplate>
 
                             <tr>
         <td><strong><%#Eval("Id")%></strong>
         </td><td><%#Eval("Username")%>
         </td><td> <%#Eval("fname")%>
             </td><td> <%#Eval("lname")%>
                  </td><td>  <%#Eval("password")%>
                </td><td> <%#Eval("contact")%>
                </td><td><%#Eval("email")%>
                    </td><td><%#Eval("House")%>
                        </td><td><%#Eval("Street")%>
                            </td><td> <%#Eval("City")%>
                                </td><td> <%#Eval("Province")%>
                                    </td><td>   <%#Eval("Country")%>
                                        </td><td><%#Eval("code")%>
                                            </td>
                                  
        </tr>        
              </ItemTemplate>
              </asp:Repeater></p>
                                 
             </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

