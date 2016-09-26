<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="approvals.aspx.cs" Inherits="approvals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Table ID="Table2" runat="server" Width="896px">
        <asp:TableRow ID="TableRow1" runat="server">

            <asp:TableCell ID="TableCell1" runat="server"  Width="40%">
            <asp:Label ID="Label12" runat="server" Text="Approving Of Loan Done by Managers" Font-Bold="True" Font-Underline="True" ForeColor="#0066FF"></asp:Label>
            <br></br><br></br>
             <asp:Label ID="Label8" runat="server" Text="Staff ID."></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox7" runat="server">
             </asp:TextBox>  <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
  ControlToValidate="TextBox7"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator> <br></br>
                 <asp:CompareValidator id="CompareValidator1" runat="server" 
  ErrorMessage="You must enter a number" 
  ControlToValidate="TextBox7" Type="Integer" ForeColor="Red"
  Operator="DataTypeCheck"></asp:CompareValidator>
                <br></br>

                <asp:Button ID="Button3" CssClass="menu" runat="server" Text="Search" onclick="Button1_Click" /><br></br><br></br>
             <asp:Label ID="Label1" CssClass="menu" runat="server" Text="Register Loan Type"></asp:Label><br></br>
               <asp:Label ID="Label2" runat="server" Text="Name   "></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="name" runat="server" Enabled="false"></asp:TextBox>
               <br></br>
                <asp:Label ID="Label3" runat="server" Text="Loan No.  "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="loan_no" runat="server" Enabled="false"></asp:TextBox> <br></br><asp:CompareValidator id="CompareValidator2" runat="server" 
  ErrorMessage="You must enter a number" 
  ControlToValidate="loan_no" Type="Integer" ForeColor="Red"
  Operator="DataTypeCheck"></asp:CompareValidator><br></br>
                <asp:Label ID="Label4" runat="server" Text="Loan Amount"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="amount" runat="server" Enabled="false"></asp:TextBox>
                <br></br> <asp:CompareValidator id="CompareValidator3" runat="server" 
  ErrorMessage="You must enter a number" 
  ControlToValidate="amount" Type="Integer" ForeColor="Red"
  Operator="DataTypeCheck"></asp:CompareValidator><br></br>
            </asp:TableCell>
            <asp:TableCell ID="TableCell2" runat="server"  Width="60%">
               
                 <asp:Label ID="Label7" runat="server" Text="Loan Type"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="loan_type" Enabled="false" runat="server"></asp:TextBox> 
               <br></br> <asp:Label ID="Label5" runat="server" Text="Interest rate"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="rate" runat="server" Enabled="false"></asp:TextBox><br></br>
                <asp:Label ID="Label6" runat="server" Text="Approving Authority"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="authority" runat="server" Enabled="false" ></asp:TextBox>          
              
                <br></br> <asp:Label ID="Label9" runat="server" Text="Start Date"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="s_date" runat="server" Enabled="false"></asp:TextBox> 
                <br></br> <asp:Label ID="Label10" runat="server" Text="End Date"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="e_date" runat="server" Enabled="false"></asp:TextBox> 
                <br></br> <asp:Label ID="Label11" runat="server" Text="Status"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="status" runat="server" Enabled="false"></asp:TextBox> 

                <br></br>

                <asp:Button ID="Button1" CssClass="menu" runat="server" Text="Aprrove" onclick="Button2_Click"  />&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" CssClass="menu" runat="server" Text="Decline" onclick="Button3_Click" />
              <br></br>
                <asp:Label
                    ID="Label20" runat="server" ></asp:Label>

            </asp:TableCell>
           
        </asp:TableRow>
        
    </asp:Table>
     <asp:Label ID="login" runat="server" ></asp:Label>
   
</asp:Content>


