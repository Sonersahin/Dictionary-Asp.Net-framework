<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="Tum_Terimler.aspx.cs" Inherits="teknik_sozluk.Tum_Terimler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Cphhead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphcontent" runat="server">
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:teknik_sozlukConnectionString %>' DeleteCommand="DELETE FROM [terim] WHERE [id] = @id" InsertCommand="INSERT INTO [terim] ([ingilizce], [turkce]) VALUES (@ingilizce, @turkce)" SelectCommand="SELECT * FROM [terim]" UpdateCommand="UPDATE [terim] SET [ingilizce] = @ingilizce, [turkce] = @turkce WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ingilizce" Type="String"></asp:Parameter>
            <asp:Parameter Name="turkce" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ingilizce" Type="String"></asp:Parameter>
            <asp:Parameter Name="turkce" Type="String"></asp:Parameter>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" class="table table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ShowSelectButton="True"></asp:CommandField>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
            <asp:BoundField DataField="ingilizce" HeaderText="ingilizce" SortExpression="ingilizce"></asp:BoundField>
            <asp:BoundField DataField="turkce" HeaderText="turkce" SortExpression="turkce"></asp:BoundField>
        </Columns>
    </asp:GridView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphscript" runat="server">
</asp:Content>
