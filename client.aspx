<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="client.aspx.cs" Inherits="client" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
     <asp:Table ID="Table1" runat="server" Width="896px">
        <asp:TableRow ID="TableRow1" runat="server">

            <asp:TableCell ID="TableCell1" runat="server"  Width="40%">
             <asp:Label ID="Label7" CssClass="menu" runat="server" Text="LOAN APPLICATION" Font-Bold="True" Font-Underline="True" ForeColor="#0066FF" ></asp:Label><br></br>
               <asp:Label ID="Label8" runat="server" Text="Staff ID  "></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="staffid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
  ControlToValidate="staffid"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator>
 <asp:CompareValidator id="CompareValidator1" runat="server" 
  ErrorMessage="You must enter a number" 
  ControlToValidate="staffid" Type="Integer" ForeColor="Red"
  Operator="DataTypeCheck"></asp:CompareValidator>
<br></br>
 <asp:Label ID="Label4" runat="server" Text="First Name "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="f_name" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server"
  ControlToValidate="f_name"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator>  <br></br>

 <asp:Label ID="Label5" runat="server" Text="Last Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="l_name" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator id="RequiredFieldValidator10" runat="server"
  ControlToValidate="l_name"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator>  <br></br>


                <asp:Label ID="Label9" runat="server" Text="Email  "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="email" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
  ControlToValidate="email"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator><br></br>
                <asp:Label ID="Label10" runat="server" Text="Department"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="department"  runat="server" DataSourceID="SqlDataSource2" 
        DataTextField="department" DataValueField="department">
    </asp:DropDownList><asp:SqlDataSource 
        ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Loan_connect %>" 
        SelectCommand="SELECT [department], [id] FROM [department_db]"></asp:SqlDataSource><br></br>

            </asp:TableCell>
            <asp:TableCell ID="TableCell2" runat="server"  Width="60%">
               
                 <br></br> <br></br>
                <asp:Label ID="Label11" runat="server" Text="Status"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="status" Text = "Pending" Enabled="false"  runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
  ControlToValidate="status"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator><br></br>
                <asp:Label ID="Label12" runat="server" Text="loan Amount"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="amount" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server"
  ControlToValidate="amount"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator>  <asp:CompareValidator id="CompareValidator2" runat="server" 
  ErrorMessage="You must enter a number" 
  ControlToValidate="amount" Type="Integer" ForeColor="Red"
  Operator="DataTypeCheck"></asp:CompareValidator> <br></br>
                <asp:Label ID="Label1" runat="server" Text="loan Type"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <asp:DropDownList ID="loan_type" runat="server" 
         DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList> 
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:Loan_connect %>" 
         SelectCommand="SELECT [name] FROM [loan_type_tb]"></asp:SqlDataSource>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server"
  ControlToValidate="loan_type"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator> <br></br>
               <asp:Label ID="Label2" runat="server" Text="Start Date"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="s_date" runat="server"></asp:TextBox> 
                <asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server"
  ControlToValidate="s_date"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator> 
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
                <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="s_date" >
                </asp:CalendarExtender>
<br></br>
                            <asp:Label ID="Label3" runat="server" Text="End Date"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="e_date" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server"
  ControlToValidate="e_date"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator> 

                <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="e_date" >
                </asp:CalendarExtender>
 <br></br>

                <br></br>

                <asp:Button ID="Button2" CssClass="menu" runat="server" Text="Apply" 
             onclick="Button2_Click" />
             <br></br>
                <asp:Label
                    ID="Label20" runat="server" ></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
     <asp:Label ID="login" runat="server" ></asp:Label>
    <br></br>

</asp:Content>

