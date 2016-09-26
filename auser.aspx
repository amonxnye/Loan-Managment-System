<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="auser.aspx.cs" Inherits="auser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 373px;
        }
        .style2
        {
            width: 373px;
            height: 21px;
        }
        .style3
        {
            height: 21px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
    <asp:Label ID="Label1" runat="server" Text="USER MANAGEMENT" Font-Bold="True" Font-Underline="True" ForeColor="#0066FF" ></asp:Label>
               
                <br /><br />
<br />                <asp:Label ID="Label4" runat="server" Text="Search User" ></asp:Label>
      
                <br />
                <asp:Label ID="Label3" runat="server" Text="By Username"></asp:Label>
    &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="searchbox" runat="server"></asp:TextBox>
                <br />
     <asp:CompareValidator id="CompareValidator2" runat="server" 
  ErrorMessage="You must enter a number" 
  ControlToValidate="searchbox" Type="Integer" ForeColor="Red"
  Operator="DataTypeCheck"></asp:CompareValidator>
                <br />
                <br />
                By Staff ID :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="idbox" runat="server"></asp:TextBox>
                 <br />
                 <asp:CompareValidator id="CompareValidator1" runat="server" 
  ErrorMessage="You must enter a number" 
  ControlToValidate="idbox" Type="Integer" ForeColor="Red"
  Operator="DataTypeCheck"></asp:CompareValidator>
                <br />
                <br />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Button ID="Button1" runat="server" Text="Search " onclick="Button1_Click" />

                <br />
                <br />
     <asp:Label ID="Label2" runat="server"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="deletebox" runat="server"></asp:TextBox>
                <br />
                <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Delete User " onclick="Button2_Click" />
    
                <br />
                <br />
                <asp:Label ID="label20" runat="server"></asp:Label>
    
            </td>
            <td>
                USER DETAILS<br />
                <br />
                Username<br />
                <asp:TextBox ID="uname" runat="server" 
                    Enabled="False"></asp:TextBox>
                <br />
                First Name<br />
                <asp:TextBox ID="f_name" runat="server" Enabled="False"></asp:TextBox>
                <br />
                Last Name<br />
                <asp:TextBox ID="l_name" runat="server" Enabled="False"></asp:TextBox>
                <br />
                Staff No.<br />
                <asp:TextBox ID="staff_no" runat="server" Enabled="False"></asp:TextBox>
                <br />
                Role<br />
                <asp:TextBox ID="role" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" rowspan="0">
                </td>
            <td class="style3" rowspan="0">
                </td>
            <td class="style3" rowspan="0">
                </td>
        </tr>
        <tr>
            <td class="style2">
                </td>
            <td class="style3">
                </td>
            <td class="style3">
                </td>
        </tr>
    </table>
    </br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    </br>
     </br>
    </br></br></br>
        <asp:Label ID="login" runat="server" ></asp:Label>
    </asp:Content>

