<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayit.aspx.cs" Inherits="WebApplication1.kayit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SİTE</title>
</head>
<body style="background-color:cadetblue;">
    <form id="form1" runat="server">

        <!--menu-->
        <p style="text-align:center;">
            <a href="kayit.aspx" style="text-decoration:none;">AnaSayfa-</a>
       <a href="giris.aspx" style="text-decoration:none;">GİRİŞ</a>
        </p>

        <!--her sey-->        
        <div>
            <asp:Label ID="Label1" runat="server" Text="id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <asp:Label ID="Label2" runat="server" Text="ad soyad"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="mail"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="telefon"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="sifre"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="sifre tekrar"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kayıt" Width="207px" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:webgubyoConnectionString %>" ProviderName="<%$ ConnectionStrings:webgubyoConnectionString.ProviderName %>" SelectCommand="SELECT * FROM kayit"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="yenile" Width="209px" />
        <br />
        <asp:Label ID="Label7" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="idkayit">
            <Columns>
                <asp:BoundField DataField="idkayit" HeaderText="idkayit" ReadOnly="True" SortExpression="idkayit" />
                <asp:BoundField DataField="kayit_ad_soyad" HeaderText="kayit_ad_soyad" SortExpression="kayit_ad_soyad" />
                <asp:BoundField DataField="kayit_email" HeaderText="kayit_email" SortExpression="kayit_email" />
                <asp:BoundField DataField="kayit_tel" HeaderText="kayit_tel" SortExpression="kayit_tel" />
                <asp:BoundField DataField="kayit_sifre" HeaderText="kayit_sifre" SortExpression="kayit_sifre" />
                <asp:BoundField DataField="kayit_sifre_tekrar" HeaderText="kayit_sifre_tekrar" SortExpression="kayit_sifre_tekrar" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <br />
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idkayit" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <EditItemTemplate>
                idkayit:
                <asp:DynamicControl ID="idkayitDynamicControl" runat="server" DataField="idkayit" Mode="ReadOnly" />
                <br />
                kayit_ad_soyad:
                <asp:DynamicControl ID="kayit_ad_soyadDynamicControl" runat="server" DataField="kayit_ad_soyad" Mode="Edit" />
                <br />
                kayit_email:
                <asp:DynamicControl ID="kayit_emailDynamicControl" runat="server" DataField="kayit_email" Mode="Edit" />
                <br />
                kayit_tel:
                <asp:DynamicControl ID="kayit_telDynamicControl" runat="server" DataField="kayit_tel" Mode="Edit" />
                <br />
                kayit_sifre:
                <asp:DynamicControl ID="kayit_sifreDynamicControl" runat="server" DataField="kayit_sifre" Mode="Edit" />
                <br />
                kayit_sifre_tekrar:
                <asp:DynamicControl ID="kayit_sifre_tekrarDynamicControl" runat="server" DataField="kayit_sifre_tekrar" Mode="Edit" />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" ValidationGroup="Insert" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                idkayit:
                <asp:DynamicControl ID="idkayitDynamicControl" runat="server" DataField="idkayit" Mode="Insert" ValidationGroup="Insert" />
                <br />
                kayit_ad_soyad:
                <asp:DynamicControl ID="kayit_ad_soyadDynamicControl" runat="server" DataField="kayit_ad_soyad" Mode="Insert" ValidationGroup="Insert" />
                <br />
                kayit_email:
                <asp:DynamicControl ID="kayit_emailDynamicControl" runat="server" DataField="kayit_email" Mode="Insert" ValidationGroup="Insert" />
                <br />
                kayit_tel:
                <asp:DynamicControl ID="kayit_telDynamicControl" runat="server" DataField="kayit_tel" Mode="Insert" ValidationGroup="Insert" />
                <br />
                kayit_sifre:
                <asp:DynamicControl ID="kayit_sifreDynamicControl" runat="server" DataField="kayit_sifre" Mode="Insert" ValidationGroup="Insert" />
                <br />
                kayit_sifre_tekrar:
                <asp:DynamicControl ID="kayit_sifre_tekrarDynamicControl" runat="server" DataField="kayit_sifre_tekrar" Mode="Insert" ValidationGroup="Insert" />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" ValidationGroup="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                idkayit:
                <asp:DynamicControl ID="idkayitDynamicControl" runat="server" DataField="idkayit" Mode="ReadOnly" />
                <br />
                kayit_ad_soyad:
                <asp:DynamicControl ID="kayit_ad_soyadDynamicControl" runat="server" DataField="kayit_ad_soyad" Mode="ReadOnly" />
                <br />
                kayit_email:
                <asp:DynamicControl ID="kayit_emailDynamicControl" runat="server" DataField="kayit_email" Mode="ReadOnly" />
                <br />
                kayit_tel:
                <asp:DynamicControl ID="kayit_telDynamicControl" runat="server" DataField="kayit_tel" Mode="ReadOnly" />
                <br />
                kayit_sifre:
                <asp:DynamicControl ID="kayit_sifreDynamicControl" runat="server" DataField="kayit_sifre" Mode="ReadOnly" />
                <br />
                kayit_sifre_tekrar:
                <asp:DynamicControl ID="kayit_sifre_tekrarDynamicControl" runat="server" DataField="kayit_sifre_tekrar" Mode="ReadOnly" />
                <br />

            </ItemTemplate>
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
        </asp:FormView>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="idkayit" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="idkayit" HeaderText="idkayit" ReadOnly="True" SortExpression="idkayit" />
                <asp:BoundField DataField="kayit_ad_soyad" HeaderText="kayit_ad_soyad" SortExpression="kayit_ad_soyad" />
                <asp:BoundField DataField="kayit_email" HeaderText="kayit_email" SortExpression="kayit_email" />
                <asp:BoundField DataField="kayit_tel" HeaderText="kayit_tel" SortExpression="kayit_tel" />
                <asp:BoundField DataField="kayit_sifre" HeaderText="kayit_sifre" SortExpression="kayit_sifre" />
                <asp:BoundField DataField="kayit_sifre_tekrar" HeaderText="kayit_sifre_tekrar" SortExpression="kayit_sifre_tekrar" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        </asp:DetailsView>
        <p>
            &nbsp;</p>
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyField="idkayit" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingItemStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                idkayit:
                <asp:Label ID="idkayitLabel" runat="server" Text='<%# Eval("idkayit") %>' />
                <br />
                kayit_ad_soyad:
                <asp:Label ID="kayit_ad_soyadLabel" runat="server" Text='<%# Eval("kayit_ad_soyad") %>' />
                <br />
                kayit_email:
                <asp:Label ID="kayit_emailLabel" runat="server" Text='<%# Eval("kayit_email") %>' />
                <br />
                kayit_tel:
                <asp:Label ID="kayit_telLabel" runat="server" Text='<%# Eval("kayit_tel") %>' />
                <br />
                kayit_sifre:
                <asp:Label ID="kayit_sifreLabel" runat="server" Text='<%# Eval("kayit_sifre") %>' />
                <br />
                kayit_sifre_tekrar:
                <asp:Label ID="kayit_sifre_tekrarLabel" runat="server" Text='<%# Eval("kayit_sifre_tekrar") %>' />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
