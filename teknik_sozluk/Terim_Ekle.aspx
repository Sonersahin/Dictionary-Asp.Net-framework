<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="Terim_Ekle.aspx.cs" Inherits="teknik_sozluk.Terim_Ekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Cphhead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cphcontent" runat="server">
    <br />

    <asp:Label ID="LblKullanici" runat="server"></asp:Label>

    <asp:Button ID="BtnCikisYap" runat="server" class="btn btn-primary" Text="Çıkış Yap" Visible="false" OnClick="BtnCikisYap_Click"/>

  <div class="form-group">
    <label for="exampleInputEmail1">İngilizce</label>
    
      <asp:TextBox ID="Txtİngilizce" class="form-control" runat="server"></asp:TextBox>
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1">Tükçe</label>
    
      <asp:TextBox ID="TxtTurkce" class="form-control" runat="server"></asp:TextBox>
  </div> 
  

        <asp:Button ID="BtnKaydet" class="btn btn-primary" runat="server" Text="Kaydet" OnClick="BtnKaydet_Click" />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:teknik_sozlukConnectionString %>' DeleteCommand="DELETE FROM [terim] WHERE [id] = @id" InsertCommand="INSERT INTO [terim] ([ingilizce], [turkce]) VALUES (@ingilizce, @turkce)" SelectCommand="SELECT * FROM [terim]" UpdateCommand="UPDATE [terim] SET [ingilizce] = @ingilizce, [turkce] = @turkce WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="Txtİngilizce" Name="ingilizce" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TxtTurkce" Name="turkce" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ingilizce" Type="String"></asp:Parameter>
            <asp:Parameter Name="turkce" Type="String"></asp:Parameter>
            <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

    <br />
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <div class="alert alert-info" role="alert">
  Kayıt İşlemi Başarılı!
</div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <div class="alert alert-danger" role="alert">
  Alanları Boş Bırakmayınız!!!
</div>
    </asp:Panel>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Cphscript" runat="server">
</asp:Content>
