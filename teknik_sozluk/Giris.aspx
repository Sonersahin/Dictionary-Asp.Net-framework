<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="teknik_sozluk.Giris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Cphhead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphcontent" runat="server">
    <br />
 


  <div class="form-group">
    <label for="exampleInputEmail1">E-Posta Adresi</label>
    <asp:TextBox ID="TxtEposta" runat="server" class="form-control"></asp:TextBox>
    <small id="emailHelp" class="form-text text-muted">Kullanıcı E-Posta</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Şifre</label>
      <asp:TextBox ID="TxtSifre" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
  </div>

    <asp:Button ID="BtnGiris" runat="server" class="btn btn-primary" Text="Giriş Yap" OnClick="BtnGiris_Click"/>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphscript" runat="server">
</asp:Content>
