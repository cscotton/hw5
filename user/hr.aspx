<%@ Page Title="" Language="VB" MasterPageFile="~/cotton.master" AutoEventWireup="false" CodeFile="hr.aspx.vb" Inherits="gridview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_players %>" 
        DeleteCommand="DELETE FROM [playerInfo] WHERE [pID] = @pID" 
        InsertCommand="INSERT INTO [playerInfo] ([rank], [name], [hr], [pa]) VALUES (@rank, @name, @hr, @pa)" 
        SelectCommand="SELECT * FROM [playerInfo]" 
        UpdateCommand="UPDATE [playerInfo] SET [rank] = @rank, [name] = @name, [hr] = @hr, [pa] = @pa WHERE [pID] = @pID">
        <DeleteParameters>
            <asp:Parameter Name="pID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="rank" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="hr" Type="Int32" />
            <asp:Parameter Name="pa" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="rank" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="hr" Type="Int32" />
            <asp:Parameter Name="pa" Type="Int32" />
            <asp:Parameter Name="pID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="pID" 
        DataSourceID="SqlDataSource1" Width="567px">
        <Columns>
            <asp:BoundField DataField="rank" HeaderText="All Time Rank" 
                SortExpression="rank" />
            <asp:BoundField DataField="name" HeaderText="Player Name" 
                SortExpression="name" />
            <asp:BoundField DataField="hr" HeaderText="Career HR" SortExpression="hr" />
            <asp:BoundField DataField="pa" HeaderText="Career Plate Appearances" 
                SortExpression="pa" />
        </Columns>
    </asp:GridView>
</asp:Content>

