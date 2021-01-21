<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="guncelleme.aspx.cs" Inherits="aspnet_websitem.guncelleme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MUSTAFA KOCA-EN ZOR RAKİP 'SENSİN'</title>
    <link href="anacss.css" type="text/css" rel="stylesheet"/>
    <link href="tasarim.css" type="text/css" rel="stylesheet"/>
    <style>
.sidenav {
  height: 100%;
  width: 0; /*Genişliği javascriptle değiştir*/
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden; /*Yatay kaydırmayı devre dışı bırak */
  transition: 0.5s;/* Sidenav'da kaymaya 0,5 saniye geçiş efekti */
  padding-top: 60px; /*İçeriği üstten 60 piksel yerleştirin */
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}
/*Menüler üzerine gelince  renklerini değiştirin */

.sidenav a:hover {
  color: #f1f1f1; 
}
/*Kapat düğmesini konumlandırın ve stillendirin (sağ üst köşe) */

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}
/* Yüksekliğin 450 pikselden az olduğu daha küçük ekranlarda, 
sidenav stilini değiştirin 
(daha az dolgu ve daha küçük bir yazı tipi boyutu) */

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="title">
<a href="index.aspx" style="text-decoration:none;">Panel Çıkış (TIKLA)</a>
                </div><br />
            <div id="YanMenu" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">

  &times;</a>

  <a href="adminpanel.aspx">Panel AnaSayfa</a>
  <a href="sil.aspx">Silme Sayfası</a>
  <a href="ekle.aspx">Kullanıcı Ekle</a>
                <a href="guncelleme.aspx">Kullanıcı Güncelle</a>
</div>


<span style="font-size:30px;cursor:pointer" onclick="openNav()">
&#9776; Panel İşlemleri 
</span>

<!-- javascript ile menuyu açma kapatma -->

<script>
function openNav() {
  document.getElementById("YanMenu").style.width = "250px";
}

function closeNav() {
  document.getElementById("YanMenu").style.width = "0";
}
</script>
             <br />
             <br />
            <div style="text-align:center;">
             <asp:Label ID="Label1" runat="server" Text="id"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="ad soyad"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="e-mail"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label4" runat="server" Text="telefon"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label5" runat="server" Text="şifre"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label6" runat="server" Text="şifre tekrar"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Kullanıcı Güncelle" Width="194px" OnClick="Button1_Click" />
                <br />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Tabloyu Yenile" Width="196px" />
                <br />
                <asp:Label ID="Label7" runat="server"></asp:Label>
                <br />
                </div>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mustafakoca %>" ProviderName="<%$ ConnectionStrings:mustafakoca.ProviderName %>" SelectCommand="SELECT * FROM kayit"></asp:SqlDataSource>
             <br />
             <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" Width="100%">
                 <Columns>
                     <asp:CommandField ShowSelectButton="True" />
                 </Columns>
             </asp:GridView>
        </div>
    </form>
</body>
</html>
