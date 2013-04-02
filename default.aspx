<%@ Page Title="" Language="VB" MasterPageFile="~/cotton.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

Welcome to my Fan Page!<br />
    <br />
&nbsp;<asp:Image class="hdr_img" ID="Image2" runat="server" ImageUrl="~/logo/celebration.jpg" />

    <br />
    <br />

<a href="http://detroit.tigers.mlb.com/"> Detroit Tigers Official Page</a><br />
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:cs_players %>" 
    SelectCommand="SELECT * FROM [playerInfo]"></asp:SqlDataSource>
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="pID" DataSourceID="SqlDataSource1" Width="430px" 
        AllowPaging="True" AllowSorting="True">
    <Columns>
        <asp:BoundField DataField="rank" HeaderText="All Time Rank" 
            SortExpression="rank" />
        <asp:BoundField DataField="name" HeaderText="Player Name" 
            SortExpression="name" />
        <asp:HyperLinkField DataNavigateUrlFields="pID" 
            DataNavigateUrlFormatString="user/hr.aspx?pID={0}" Text="View Details" />
    </Columns>
</asp:GridView>
<br />

</asp:Content>

