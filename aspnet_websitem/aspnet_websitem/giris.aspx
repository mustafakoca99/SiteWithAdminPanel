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
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş Yap" Width="174px" />
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mustafakoca %>" ProviderName="<%$ ConnectionStrings:mustafakoca.ProviderName %>" SelectCommand="SELECT * FROM iletisim"></asp:SqlDataSource>
        <br />
        <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyField="idiletisim" DataSourceID="SqlDataSource1" GridLines="Both">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                idiletisim:
                <asp:Label ID="idiletisimLabel" runat="server" Text='<%# Eval("idiletisim") %>' />
                <br />
                kitap_ad_soyad:
                <asp:Label ID="kitap_ad_soyadLabel" runat="server" Text='<%# Eval("kitap_ad_soyad") %>' />
                <br />
                kitap_eposta:
                <asp:Label ID="kitap_epostaLabel" runat="server" Text='<%# Eval("kitap_eposta") %>' />
                <br />
                kitap_ileti_konusu:
                <asp:Label ID="kitap_ileti_konusuLabel" runat="server" Text='<%# Eval("kitap_ileti_konusu") %>' />
                <br />
                kitap_ileti:
                <asp:Label ID="kitap_iletiLabel" runat="server" Text='<%# Eval("kitap_ileti") %>' />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="idiletisim" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <EditRowStyle BackColor="#7C6F57" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="idiletisim" HeaderText="idiletisim" ReadOnly="True" SortExpression="idiletisim" />
                <asp:BoundField DataField="kitap_ad_soyad" HeaderText="kitap_ad_soyad" SortExpression="kitap_ad_soyad" />
                <asp:BoundField DataField="kitap_eposta" HeaderText="kitap_eposta" SortExpression="kitap_eposta" />
                <asp:BoundField DataField="kitap_ileti_konusu" HeaderText="kitap_ileti_konusu" SortExpression="kitap_ileti_konusu" />
                <asp:BoundField DataField="kitap_ileti" HeaderText="kitap_ileti" SortExpression="kitap_ileti" />
            </Fields>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:DetailsView>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="idiletisim" DataSourceID="SqlDataSource1" ForeColor="#333333">
            <EditItemTemplate>
                idiletisim:
                <asp:Label ID="idiletisimLabel1" runat="server" Text='<%# Eval("idiletisim") %>' />
                <br />
                kitap_ad_soyad:
                <asp:TextBox ID="kitap_ad_soyadTextBox" runat="server" Text='<%# Bind("kitap_ad_soyad") %>' />
                <br />
                kitap_eposta:
                <asp:TextBox ID="kitap_epostaTextBox" runat="server" Text='<%# Bind("kitap_eposta") %>' />
                <br />
                kitap_ileti_konusu:
                <asp:TextBox ID="kitap_ileti_konusuTextBox" runat="server" Text='<%# Bind("kitap_ileti_konusu") %>' />
                <br />
                kitap_ileti:
                <asp:TextBox ID="kitap_iletiTextBox" runat="server" Text='<%# Bind("kitap_ileti") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                idiletisim:
                <asp:TextBox ID="idiletisimTextBox" runat="server" Text='<%# Bind("idiletisim") %>' />
                <br />
                kitap_ad_soyad:
                <asp:TextBox ID="kitap_ad_soyadTextBox" runat="server" Text='<%# Bind("kitap_ad_soyad") %>' />
                <br />
                kitap_eposta:
                <asp:TextBox ID="kitap_epostaTextBox" runat="server" Text='<%# Bind("kitap_eposta") %>' />
                <br />
                kitap_ileti_konusu:
                <asp:TextBox ID="kitap_ileti_konusuTextBox" runat="server" Text='<%# Bind("kitap_ileti_konusu") %>' />
                <br />
                kitap_ileti:
                <asp:TextBox ID="kitap_iletiTextBox" runat="server" Text='<%# Bind("kitap_ileti") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                idiletisim:
                <asp:Label ID="idiletisimLabel" runat="server" Text='<%# Eval("idiletisim") %>' />
                <br />
                kitap_ad_soyad:
                <asp:Label ID="kitap_ad_soyadLabel" runat="server" Text='<%# Bind("kitap_ad_soyad") %>' />
                <br />
                kitap_eposta:
                <asp:Label ID="kitap_epostaLabel" runat="server" Text='<%# Bind("kitap_eposta") %>' />
                <br />
                kitap_ileti_konusu:
                <asp:Label ID="kitap_ileti_konusuLabel" runat="server" Text='<%# Bind("kitap_ileti_konusu") %>' />
                <br />
                kitap_ileti:
                <asp:Label ID="kitap_iletiLabel" runat="server" Text='<%# Bind("kitap_ileti") %>' />
                <br />

            </ItemTemplate>
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:FormView>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idiletisim" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="idiletisim" HeaderText="idiletisim" ReadOnly="True" SortExpression="idiletisim" />
                <asp:BoundField DataField="kitap_ad_soyad" HeaderText="kitap_ad_soyad" SortExpression="kitap_ad_soyad" />
                <asp:BoundField DataField="kitap_eposta" HeaderText="kitap_eposta" SortExpression="kitap_eposta" />
                <asp:BoundField DataField="kitap_ileti_konusu" HeaderText="kitap_ileti_konusu" SortExpression="kitap_ileti_konusu" />
                <asp:BoundField DataField="kitap_ileti" HeaderText="kitap_ileti" SortExpression="kitap_ileti" />
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
    </form>
</body>
</html>
