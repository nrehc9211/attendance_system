<?php
# Memulakan fungsi session
session_start();

# Memanggil fail header.php 
include('header.php');
?>
<table width='100%'>
    <tr>
        <td width='70%' bgcolor='#7CB9E8'>
            <!-- ubah nama fail banner.jpg mengikut nama gambar anda-->
            <img src='https://tse3.mm.bing.net/th?id=OIP.WpZvmtsS_n0_jCv2JAiYdQHaCo&pid=Api&P=0&h=180'width='100%'>
        </td>
        <td align='center' bgcolor='#afeeee'>
            <h3>Daftar Sebagai Ali Kelab</h3>
            <h3>Klik Pautan Dibawah Untuk Mendaftar</h3>
            <a href='signup-borang.php'>Daftar Sini</a>
        </td>
    </tr>
</table>
<?php include('footer.php');?>

