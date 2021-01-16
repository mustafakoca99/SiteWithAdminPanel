<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminpanel.aspx.cs" Inherits="aspnet_websitem.adminpanel" %>

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

  table {
    border: 1px solid #ccc;
    width: 100%;
    margin:0;
    padding:0;
    border-collapse: collapse;
    border-spacing: 0;
  }

  table tr {
    border: 1px solid #ddd;
    padding: 5px;
  }

  table th, table td {
    padding: 10px;
    text-align: center;
  }

  table th {
    text-transform: uppercase;
    font-size: 14px;
    letter-spacing: 1px;
  }

  /*Mobil telefon için css kodları*/

  @media screen and (max-width: 600px) {

    table {
      border: 0;
    }

    table thead {
      display: none;
    }

    table tr {
      margin-bottom: 10px;
      display: block;
      border-bottom: 2px solid #ddd;
    }

    table td {
      display: block;
      text-align: right;
      font-size: 13px;
      border-bottom: 1px dotted #ccc;
    }

    table td:last-child {
      border-bottom: 0;
    }

 /*data-label valulerini alarak sütünümuza eklemiş oluyoruz*/

    table td:before {
      content: attr(data-label);
      float: left;
      text-transform: uppercase;
      font-weight: bold;
    }
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
   <h1 style="text-align:center; color:brown;">ADMİN PANELİNE HOŞ GELDİN!</h1>
        <div style="text-align:center; color:brown;"><b>ADMİN SAHİBİ BİLGİLERİ!</b></div>
        <table>
  <tbody>
    <tr>
      <td data-label="ID">1</td>
      <td data-label="ADI">ALİ</td>
      <td data-label="DERS">CSS</td>
      <td data-label="TARAYICI">CHROME</td>
    </tr>
    <tr>
      <td data-label="ID">2</td>
      <td data-label="ADI">AHMET</td>
      <td data-label="DERS">CSS</td>
      <td data-label="TARAYICI">FİREFOX</td>
    </tr>
  </tbody>
</table>

<br />
            <div style="text-align:center;">
            <p><b>

                1-Kullanıcı Ekleme (Yandan açılır menüde)
                <br />
                2-Kullanıcı Silme (Yandan açılır menüde)
                <br />
                3-Kullanıcı Güncelleme(Yandan açılır menüde)
                <br />
                ...Admin panelinden çıkmak için yukarıdan tıkla...
                <br />
                <br />
                ! Menüyü AÇ !
               </b></p>
                </div>
        </div>
    </form>
</body>
</html>
