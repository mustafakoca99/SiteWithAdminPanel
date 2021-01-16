<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fotograflar.aspx.cs" Inherits="aspnet_websitem.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MUSTAFA KOCA-EN ZOR RAKİP 'SENSİN'</title>
     <link href="anacss.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
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
FOTOĞRAFLAR
</div><br />
                <div>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="RESİM-1" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="RESİM-2" />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="RESİM-3" />
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="RESİM-4" />
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="RESİM-5" />

                    <asp:ImageButton ID="ImageButton1" runat="server" Height="51px" ImageUrl="~/foto/4.jpg" OnClick="ImageButton1_Click1" Width="84px" />
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="51px" ImageUrl="~/foto/5.jpg" OnClick="ImageButton2_Click" Width="84px" />
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="51px" ImageUrl="~/foto/6.jpg" OnClick="ImageButton3_Click" Width="84px" />

</div>
                <asp:Image ID="Image1" runat="server" Height="310px" Width="386px" />
        
        <asp:Image ID="Image2" runat="server" Height="222px" Width="252px" />
        
<div class="navLink" align="center">İnstagram: @Mustafakoca99 & @bilisimisleri & @enzorrakipsensin
</div>
<div class="dingbat" style="text-decoration:none; text-align:center;">
    <a href="https://www.linkedin.com/in/mustafa-koca-059bb6178/">Linkedin-</a>
<a href="https://github.com/mustafakoca99">-GitHub</a>
<a href="https://bilgim.net/profil/mustafa1905">-Bilgim.net-</a>
<a href="https://www.turkiyeaktuel.com/author/mustafakoca/">-Türkiye Aktüel</a>
</div><br>
        <div class="footer">
©Mustafakoca Tüm Hakları Saklıdır.
Bu sayfada paylaşılan tüm yazılar Mustafakoca tarafından hazırlanmıştır, kaynak gösterilmeden farklı mecralarda kullanılamaz.
</div>
    </form>
</body>
</html>
