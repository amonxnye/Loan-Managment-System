<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="listuser.aspx.cs" Inherits="listuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="SYSTEM USERS" Font-Bold="True" Font-Underline="True" ForeColor="#0066FF" ></asp:Label>
    </br></br>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" Height="140px" Width="901px" AllowPaging="True" 
        AllowSorting="True">
    <Columns>
        <asp:BoundField DataField="username" HeaderText="username" 
            SortExpression="username" />
        <asp:BoundField DataField="first_name" HeaderText="first_name" 
            SortExpression="first_name" />
        <asp:BoundField DataField="id" HeaderText="id" 
            SortExpression="id" InsertVisible="False" ReadOnly="True" />
        <asp:BoundField DataField="last_name" HeaderText="last_name" 
            SortExpression="last_name" />
        <asp:BoundField DataField="email" HeaderText="email" 
            SortExpression="email" />
        <asp:BoundField DataField="role" HeaderText="role" 
            SortExpression="role" />
        <asp:BoundField DataField="staff_no" HeaderText="staff_no" 
            SortExpression="staff_no" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Loan_connect %>" 
    
        SelectCommand="SELECT [username], [first_name], [id], [last_name], [email], [role], [staff_no] FROM [user_db]">
</asp:SqlDataSource>

<asp:Label
                    ID="Label" runat="server" ></asp:Label>
</asp:Content>

