<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        #Table1
        {
            height: 494px;
        }
    .style1
    {
        width: 274px;
    }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
       
        <TableRow runat="server">
                <TableCell runat="server"> 
       
           <br>
       
       </br>
       
        <table style="width: 100%;">
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
        <asp:Label ID="Label1" runat="server" Text="ADMIN & USER LOGIN "></asp:Label>
       
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
         <asp:Button ID="Button2" runat="server" Text="Signout" 
            onclick="Button2_Click"  />
       
        <asp:Label ID="Label4" runat="server" Text="Username "></asp:Label>&nbsp; <asp:TextBox ID="TextBox1" runat="server" Required ></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
  ControlToValidate="TextBox1"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
        <asp:Label ID="Label3" runat="server" Text="Password "  ></asp:Label>&nbsp; <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
          <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
  ControlToValidate="TextBox2"
  ErrorMessage="*"
  ForeColor="Red">
</asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
        <asp:Button ID="Button1" runat="server" Text="Signin" 
            onclick="Button1_Click"  />
                </td>
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
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
            <asp:Label
                    ID="Label20" runat="server" ></asp:Label>
                    <br />
    <asp:Label ID="loginx" runat="server" ></asp:Label>
      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Adefault.aspx" ForeColor="Blue"  ></asp:HyperLink>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
           <br>
        </br>
           <br>

</br>         
                </TableCell>

            </TableRow>
        
        </Table>
    </h2>
<br />
<br />
</asp:Content>
