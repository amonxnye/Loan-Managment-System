<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<asp:Table ID="Table2" runat="server" Width="896px">
        <asp:TableRow ID="TableRow1" runat="server">

            <asp:TableCell ID="TableCell1" runat="server"  Width="40%">
             <asp:Label ID="Label1" CssClass="menu" runat="server" Text="Search Board"></asp:Label><br></br>
               <asp:Label ID="Label2" runat="server" Text="Name   "></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
  ControlToValidate="TextBox1"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator><br></br>
                <asp:Label ID="Label3" runat="server" Text="Loan Type  "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
  ControlToValidate="TextBox2"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator><br></br>
                <asp:Label ID="Label4" runat="server" Text="Loan Floor"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
  ControlToValidate="TextBox3"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator><br></br>
            </asp:TableCell>
            <asp:TableCell ID="TableCell2" runat="server"  Width="60%">
               
                
                <asp:Label ID="Label5" runat="server" Text="Interest rate"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
  ControlToValidate="TextBox4"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator><br></br>
                <asp:Label ID="Label6" runat="server" Text="loan Prefix"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server"
  ControlToValidate="TextBox5"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator> 
                
                <br></br>

                <asp:Button ID="Button1" CssClass="menu" runat="server" Text="Search" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
     <asp:Label ID="login" runat="server" ></asp:Label>
</asp:Content>

