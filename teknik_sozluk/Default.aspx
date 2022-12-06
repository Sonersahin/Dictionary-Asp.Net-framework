<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="teknik_sozluk.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Cphhead" runat="server">
    <link href="css/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphcontent" runat="server">
    <br />
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:teknik_sozlukConnectionString %>' SelectCommand="Terim_Getir" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <asp:GridView ID="GridView1" class="table table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="ingilizce" HeaderText="ingilizce" SortExpression="ingilizce"></asp:BoundField>
            <asp:BoundField DataField="turkce" HeaderText="turkce" SortExpression="turkce"></asp:BoundField>
        </Columns>
    </asp:GridView>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphscript" runat="server">
</asp:Content>
