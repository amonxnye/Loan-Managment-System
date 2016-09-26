<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Access.aspx.cs" Inherits="Access" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 295px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
    <asp:Label ID="Label1" runat="server" Text="ACCESS LEVEL CONTROL" Font-Bold="True" Font-Underline="True" ForeColor="#0066FF" ></asp:Label>
                <br />
                <br />
                <br />
    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
     <asp:CompareValidator id="CompareValidator1" runat="server" 
  ErrorMessage="You must enter a number" 
  ControlToValidate="TextBox1" Type="String" ForeColor="Red"
  Operator="DataTypeCheck"></asp:CompareValidator>
                <br />
                <br />
    <asp:Button ID="Button1" runat="server" Text="Enter" onclick="Button1_Click" />

                <br />
                <br />
    <asp:Label ID="Label20" runat="server"></asp:Label>
                <br />
                <br />
                <br />
       <asp:Label ID="Label3" runat="server" Text="Remove Access Level"></asp:Label>
            </td>
            <td>
                <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="role" DataValueField="role" Height="219px" Width="224px">
                </asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Loan_connect %>" 
                    SelectCommand="SELECT [role] FROM [access_db]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
    <asp:Label ID="Label4" runat="server" Text="Name"></asp:Label>
                <br />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
    <asp:Button ID="Button2" runat="server" Text="Delete" onclick="Button2_Click" />
    <br /><br />
    <asp:Label ID="Label21" runat="server"></asp:Label>
                <br />
                <br />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </br></br></br>
    </br>
    </br> </br>
    
    </br> 
    </br></br>
       </br></br>
    </br>
    </br> </br>
    
</asp:Content>

