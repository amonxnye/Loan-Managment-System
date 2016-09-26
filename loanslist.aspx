<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="loanslist.aspx.cs" Inherits="loanslist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
    BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
    DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
    Height="298px" Width="892px">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
            ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="first_name" HeaderText="first_name" 
            SortExpression="first_name" />
        <asp:BoundField DataField="last_name" HeaderText="last_name" 
            SortExpression="last_name" />
        <asp:BoundField DataField="department" HeaderText="department" 
            SortExpression="department" />
        <asp:BoundField DataField="staff_id" HeaderText="staff_id" 
            SortExpression="staff_id" />
        <asp:BoundField DataField="loan_type" HeaderText="loan_type" 
            SortExpression="loan_type" />
        <asp:BoundField DataField="loan_amount" HeaderText="loan_amount" 
            SortExpression="loan_amount" />
        <asp:BoundField DataField="status" HeaderText="status" 
            SortExpression="status" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Loan_connect %>" 
    SelectCommand="SELECT [id], [first_name], [last_name], [department], [staff_id], [loan_type], [loan_amount], [status] FROM [loan_app]">
</asp:SqlDataSource>
<asp:Label
                    ID="Label" runat="server" ></asp:Label>
</asp:Content>

