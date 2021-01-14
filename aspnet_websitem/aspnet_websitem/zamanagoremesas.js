var d = new Date()
var time = d.getHours()
if (time<10){
document.write("<b>GÜNAYDIN</b>");
}
else if (time>=10 && time<16)
 {
document.write("<b>İYİ GÜNLER</b>");
}
else
 {
document.write("<b>İYİ AKŞAMLAR</b>");
 }
