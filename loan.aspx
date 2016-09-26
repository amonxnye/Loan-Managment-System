<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="loan.aspx.cs" Inherits="loan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Table ID="Table2" runat="server" Width="896px">
        <asp:TableRow ID="TableRow1" runat="server">

            <asp:TableCell ID="TableCell1" runat="server"  Width="40%">
             <asp:Label ID="Label1" CssClass="menu" runat="server" Text="REGISTRATION LOAN TYPE" Font-Bold="True" Font-Underline="True" ForeColor="#0066FF" ></asp:Label><br></br>
               <asp:Label ID="Label2" runat="server" Text="Loan Name   "></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
  ControlToValidate="name"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator><br></br>
                <asp:Label ID="Label3" runat="server" Text="Loan Ceiling  "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="ceiling" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
  ControlToValidate="ceiling"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator>
 <asp:CompareValidator id="CompareValidator1" runat="server" 
  ErrorMessage="You must enter a number" 
  ControlToValidate="ceiling" Type="Integer" ForeColor="Red"
  Operator="DataTypeCheck"></asp:CompareValidator><br></br>
                <asp:Label ID="Label4" runat="server" Text="Loan Floor"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" Text="0" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
  ControlToValidate="TextBox3"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator>
 <asp:CompareValidator id="CompareValidator2" runat="server" 
  ErrorMessage="You must enter a number" 
  ControlToValidate="TextBox3" Type="Integer" ForeColor="Red"
  Operator="DataTypeCheck"></asp:CompareValidator>
<br></br>
            </asp:TableCell>
            <asp:TableCell ID="TableCell2" runat="server"  Width="60%">
               
                
                <asp:Label ID="Label5" runat="server" Text="Interest rate"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="rate" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
  ControlToValidate="rate"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator>
 <asp:CompareValidator id="CompareValidator3" runat="server" 
  ErrorMessage="You must enter a number" 
  ControlToValidate="rate" Type="Integer" ForeColor="Red"
  Operator="DataTypeCheck"></asp:CompareValidator>
  <br></br>
          
                <asp:Button ID="Button1" CssClass="menu" runat="server" Text="Apply"  onclick="Button1_Click" />
                <br></br>
                <asp:Label
                    ID="Label20" runat="server" ></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
     <asp:Label ID="login" runat="server" ></asp:Label>
</asp:Content>

