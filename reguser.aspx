<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="reguser.aspx.cs" Inherits="Account_reguser" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Table ID="Table1" runat="server" Width="896px">
        <asp:TableRow ID="TableRow1" runat="server">

            <asp:TableCell ID="TableCell1" runat="server"  Width="40%">
             <asp:Label ID="Label7" CssClass="menu" runat="server" Text="USER REGISTRATION" Font-Bold="True" Font-Underline="True" ForeColor="#0066FF"></asp:Label><br></br>
               <asp:Label ID="Label8" runat="server" Text="FIrst Name"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="f_name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
  ControlToValidate="f_name"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator><br></br>
 <asp:Label ID="Label3" runat="server" Text="Last Name   "></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="l_name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server"
  ControlToValidate="l_name"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator><br></br>
                <asp:Label ID="Label9" runat="server" Text="Email  "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="email"  runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
  ControlToValidate="email"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator><br></br>
                <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox8" runat="server" TextMode="Password" ></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
  ControlToValidate="TextBox8"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator><br></br>
  <asp:Label ID="Label11" runat="server" Text="Password"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox9" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
  ControlToValidate="TextBox9"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator><br>
<asp:CompareValidator id="Compare1" 
                    ControlToValidate="TextBox8" 
                    ControlToCompare="TextBox9" 
                    Type="String"
                    Operator="Equal"
                    EnableClientScript="false"
                    ForeColor="Red" 
                    Text="Password Not Matching" 
                    runat="server"/>
</br>
            </asp:TableCell><asp:TableCell ID="TableCell2" runat="server"  Width="60%">
               
                 <br></br> <br></br>
              
                <asp:Label ID="Label12" runat="server" Text="Department"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="department"  runat="server" DataSourceID="SqlDataSource2" 
        DataTextField="department" DataValueField="department">
    </asp:DropDownList><asp:SqlDataSource 
        ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Loan_connect %>" 
        SelectCommand="SELECT [department], [id] FROM [department_db]"></asp:SqlDataSource>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server"
  ControlToValidate="department"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator>  <br></br>
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="username" runat="server"></asp:TextBox> 
                 <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server"
  ControlToValidate="username"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator> <br></br>
               <asp:Label ID="Label2" runat="server" Text="Role"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:DropDownList 
        ID="role" runat="server" DataSourceID="SqlDataSource1" 
        DataTextField="role" DataValueField="id"></asp:DropDownList> 
            <asp:SqlDataSource 
        ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Loan_connect %>" 
        SelectCommand="SELECT [role], [id] FROM [access_db]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server"
  ControlToValidate="role"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator> <br></br>
 <asp:Label ID="Label4" runat="server" Text="Staff No. "></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="staff" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server"
  ControlToValidate="staff"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator>

    <asp:CompareValidator id="CompareValidator1" runat="server" 
  ErrorMessage="You must enter a number" 
  ControlToValidate="staff" Type="Integer" ForeColor="Red"
  Operator="DataTypeCheck"></asp:CompareValidator>
  
  <br></br>
 
                <br></br>

                <asp:Button ID="Button2" CausesValidation="true" CssClass="menu" runat="server" Text="Register User" onclick="Button1_Click" />
                  <br></br>
                <asp:Label
                    ID="Label20" runat="server" ></asp:Label>


                
            </asp:TableCell></asp:TableRow></asp:Table></br><asp:Label ID="login" runat="server" ></asp:Label></asp:Content>