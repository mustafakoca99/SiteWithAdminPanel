<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="aspnet_websitem.giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <title>MUSTAFA KOCA-EN ZOR RAKİP 'SENSİN'</title>
    <link href="anacss.css" type="text/css" rel="stylesheet"/>
    <link href="tasarim.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="title">
<a href="index.aspx" style="text-decoration:none;">AnaSayfa-</a>
<a href="iletisim.aspx" style="text-decoration:none;">-İletişim-</a>
<a href="hakkimizda.aspx" style="text-decoration:none;">-Hakkımızda-</a>
<a href="yardim.aspx" style="text-decoration:none;">-Yardım</a>
 <a href="fotograflar.aspx" style="text-decoration:none;">-Fotoğraflar(Eklenen Sayfa)</a>  
                <a href="kayit.aspx" style="text-decoration:none;">-Kayıt</a> 
                 <a href="giris.aspx" style="text-decoration:none;">-Giriş</a>
</div>
            <div class="nav">
Neye talipsen,ona aitsin.<br><hr>
SİTE MESAJI: <script src="zamanagoremesas.js"></script>
</div>
<div class="baslik">
<h1>MUSTAFA KOCA<br></h1><br>
</div>
<div class="sidebarHeader">
EN ZOR RAKİP 'SENSİN'
</div>
            <div class="subtitle">
GİRİŞ
                <br />
    </div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Mail: "></asp:Label>
        <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Şifre: "></asp:Label>
        <asp:TextBox ID="txtsifre" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="YÖNETİCİ MİSİN?" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş Yap" Width="175px" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="TABLOYU YENİLE" Width="181px" />
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mustafakoca %>" ProviderName="<%$ ConnectionStrings:mustafakoca.ProviderName %>" SelectCommand="SELECT * FROM kayit"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mustafakoca %>" ProviderName="<%$ ConnectionStrings:mustafakoca.ProviderName %>" SelectCommand="SELECT * FROM kullanicikayit"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" Width="100%" AutoGenerateColumns="False" DataKeyNames="idkullanicikayit">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="idkullanicikayit" HeaderText="idkullanicikayit" ReadOnly="True" SortExpression="idkullanicikayit" />
                <asp:BoundField DataField="kullanicikayitadsoyad" HeaderText="kullanicikayitadsoyad" SortExpression="kullanicikayitadsoyad" />
                <asp:BoundField DataField="kullanicikayitmail" HeaderText="kullanicikayitmail" SortExpression="kullanicikayitmail" />
                <asp:BoundField DataField="kullanicikayittel" HeaderText="kullanicikayittel" SortExpression="kullanicikayittel" />
                <asp:BoundField DataField="kullanicikayitsifre" HeaderText="kullanicikayitsifre" SortExpression="kullanicikayitsifre" />
                <asp:BoundField DataField="kullanicikayitsifretekrar" HeaderText="kullanicikayitsifretekrar" SortExpression="kullanicikayitsifretekrar" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idkayit" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="idkayit" HeaderText="idkayit" ReadOnly="True" SortExpression="idkayit" />
                <asp:BoundField DataField="kayit_ad_soyad" HeaderText="kayit_ad_soyad" SortExpression="kayit_ad_soyad" />
                <asp:BoundField DataField="kayit_email" HeaderText="kayit_email" SortExpression="kayit_email" />
                <asp:BoundField DataField="kayit_tel" HeaderText="kayit_tel" SortExpression="kayit_tel" />
                <asp:BoundField DataField="kayit_sifre" HeaderText="kayit_sifre" SortExpression="kayit_sifre" />
                <asp:BoundField DataField="kayit_sifre_tekrar" HeaderText="kayit_sifre_tekrar" SortExpression="kayit_sifre_tekrar" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <div class="footer">
Bu site Mustafa Koca'ya aittir. Bütün hakları saklıdır. İzinsiz kopya vb içerikler yasaktır...
</div>
    </form>
</body>
</html>
