<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="aspnet_websitem.iletisim" %>

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
İLETİŞİM
    </div>
<font color="black"><b>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Text="İD:"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" Width="206px"></asp:TextBox>
            </b></font>
<legent><font color="black"><b><h2>
                <asp:Label ID="Label3" runat="server" Text="Ad soyad:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Width="128px"></asp:TextBox>
            </h2>
            <asp:Label ID="Label2" runat="server" Text="E-Posta:"></asp:Label>
            </b></legent>
    <div class="tablehucre10"><b>MUSTAFA KOCA;</b><br /><br />
        1-İSTEKLERİNE BAKARSAN, BÜTÜN DÜĞÜMLERİ ÇÖZERSİN.<br />
        <br />2-NEYE TALİPSEN,ONA AİTSİN.<br />
        <br />3-İKİ TÜR İNSAN VARDIR; GELİP ARKASINA BAKANLAR, 
        GİDİP ARKASINA BAKMAYANLAR, YANİ İNSANLAR SEVMEDİLER VE HİÇBİR ZAMAN SEVMEYECEKLER.<br /4-ÖLÜM HABERSİZ GELİR<font color="black"><b><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </b></font></div>

  
            <b>
            <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 22px" Width="177px"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="İleti konusu:"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Width="179px"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="İleti:"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Height="96px" TextMode="MultiLine" Width="223px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="31px" OnClick="Button1_Click" Text="GÖNDER" Width="252px" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mustafakoca %>" ProviderName="<%$ ConnectionStrings:mustafakoca.ProviderName %>" SelectCommand="SELECT * FROM iletisim"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Button2" runat="server" Height="28px" OnClick="Button2_Click" Text="TABLO YENİLE!!!" Width="252px" />
            <br />
           <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
               <AlternatingRowStyle BackColor="White" />
               <EditRowStyle BackColor="#7C6F57" />
               <FooterStyle BackColor="#660033" Font-Bold="True" ForeColor="White" BorderColor="#993366" BorderStyle="Dashed" />
               <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="#E3EAEB" />
               <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
               <SortedAscendingCellStyle BackColor="#F8FAFA" />
               <SortedAscendingHeaderStyle BackColor="#246B61" />
               <SortedDescendingCellStyle BackColor="#D4DFE1" />
               <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <br />
            </b>
  
<div class="tablesira">
<div class="tablehucre" align="center"><img src="foto/11.jpg" width="200" height="280" onmousedown="alert('SÖZ!')"/></div>
<div class="tablehucre"  align="center"><img src="foto/12.jpg" width="200" height="280" onmousedown="alert('GÜZEL BİR ÇEKİM!')" /></div>
<div class="tablehucre" align="center"><img src="foto/13.jpg" width="200" height="280" onmousedown="alert('SATIŞ REKLAMI!')"/></div>
<div class="tablehucre" align="center"><img src="foto/14.jpg" width="200" height="280" onmousedown="alert('BAYKUŞ!')"/></div>
</div>
<br /><br /><br><br><br><br><br><br><br><br><br><br><br>
<div class="footer">
Bu site Mustafa Koca'ya aittir. Bütün hakları saklıdır. İzinsiz kopya vb içerikler yasaktır...
</div>
        </div>
    </form>
</body>
</html>
