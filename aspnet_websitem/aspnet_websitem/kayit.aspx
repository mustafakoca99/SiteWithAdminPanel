<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayit.aspx.cs" Inherits="aspnet_websitem.kayit" %>

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
KAYIT<br />
            </div>

        </div>
        <asp:Label ID="Label1" runat="server" Text="İD:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="188px"></asp:TextBox>
        <p>
            <asp:Label ID="Label2" runat="server" Text="AD SOYAD:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="139px" Height="22px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="E-MAİL:"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Width="158px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="TELEFON:"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Width="142px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="ŞİFRE:"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Width="160px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label6" runat="server" Text="ŞİFRE TEKRAR:"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" Width="111px"></asp:TextBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mustafakocaConnectionString2 %>" ProviderName="<%$ ConnectionStrings:mustafakocaConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM kayit"></asp:SqlDataSource>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="KAYIT OL" Width="208px" OnClick="Button1_Click" />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Width="100%" AllowPaging="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
        <div class="footer">
Bu site Mustafa Koca'ya aittir. Bütün hakları saklıdır. İzinsiz kopya vb içerikler yasaktır...
</div>
    </form>
</body>
</html>
