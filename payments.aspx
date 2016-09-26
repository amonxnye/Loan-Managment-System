<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="payments.aspx.cs" Inherits="payments" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
        <asp:Table ID="Table1" runat="server" Width="896px">
        <asp:TableRow ID="TableRow2" runat="server">

            <asp:TableCell ID="TableCell3" runat="server"  Width="40%">
             <asp:Label ID="Label7" CssClass="menu" runat="server" Text="PAYMENT REGISTRATION" Font-Bold="True" Font-Underline="True" ForeColor="#0066FF"></asp:Label><br></br><br></br>
               <asp:Label ID="Label8" runat="server" Text="Name"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="name"  runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
  ControlToValidate="name"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator>
<br></br><br></br>
                <asp:Label ID="Label9" runat="server" Text="Authority ID "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="authority"  runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
  ControlToValidate="authority"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator>
 <asp:CompareValidator id="CompareValidator1" runat="server" 
  ErrorMessage="You must enter a number" 
  ControlToValidate="authority" Type="Integer" ForeColor="Red"
  Operator="DataTypeCheck"></asp:CompareValidator>
<br></br>
                <asp:Label ID="Label10" runat="server" Text="Loan No."></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="loan_id"  runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
  ControlToValidate="loan_id"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator>
 <asp:CompareValidator id="CompareValidator2" runat="server" 
  ErrorMessage="You must enter a number" 
  ControlToValidate="loan_id" Type="Integer" ForeColor="Red"
  Operator="DataTypeCheck"></asp:CompareValidator>
<br></br>
            </asp:TableCell>
            <asp:TableCell ID="TableCell4" runat="server"  Width="60%">
               
                
                <asp:Label ID="Label11" runat="server" Text="Amount"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="amount"  runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
  ControlToValidate="amount"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator>
 <asp:CompareValidator id="CompareValidator3" runat="server" 
  ErrorMessage="You must enter a number" 
  ControlToValidate="amount" Type="Integer" ForeColor="Red"
  Operator="DataTypeCheck"></asp:CompareValidator>
<br></br>
                <asp:Label ID="Label12" runat="server" Text="Date"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="date"  runat="server"></asp:TextBox> 
               <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
                <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="date" >
                </asp:CalendarExtender>
                 <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server"
  ControlToValidate="date"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator><br></br>
                <asp:Label
                    ID="Label1" runat="server" Text="Upload Scanned Reciept Copy" ></asp:Label>
                <br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
                 <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server"
  ControlToValidate="FileUpload1"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator>
<asp:Button ID="btnUpload" runat="server" Text="Upload"  Visible="false" Enabled="false" />
<br></br><br></br><br></br>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" CssClass="menu" runat="server" Text="Register" onclick="Button1_Click" />
                   <br></br>
                <asp:Label
                    ID="Label20" runat="server" ></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
     <asp:Label ID="login" runat="server" ></asp:Label>
</asp:Content>

