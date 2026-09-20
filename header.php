<!DOCTYPE html>
<html>
    <head>
        <title>KELAB CATUR SDBL</title>
        <style>
            {
                margin:0;
                padding:0;
            }

            body{
                background-color: #e7e7e7;
            }

            header{
                background-color:#c2c4c4;
                color:black;
                text-align:center;
            }
            footer{
                background-color:#c2c4c4;
                color:black;
                text-align:center;
                padding:3px;
                align-content:flex-end;
            }
            article{
                padding:5px;
                text-align:center;
            }
            table{
                background-color:white;
                width: 100%;
                border-collapse:collapse;
                border:3px solid grey;
            }
            tr:hover{
                background-color:#e7e7e7;
                color:black;
            }
            nav{
                background-color:#e7e7e7;
                padding:10px;
            }
            a{
                background-color:#f3f3f2;
                color:black;
                padding: 10px 25px;
                text-decoration:none;
                display:inline-block;
                border-radius:5px;
            }
            a:hover{
                background-color:yellow;
            }
            input,
            select,
            button{
                padding:6px;
                margin-top:6px;
                border-radius:5px;
            }
            input[type=submit]{
                background-color:#e7e7e7;
                color:black;
            }
            input[type=submit]:hover{
                background-color:yellow;
                color:black;
            }
        </style>
    </head>
    <body>

    </body>
</html>




<header>
<!--Tajuk sistem.Akan dipaparkan disebelah atas-->
<h1>KELAB CATUR SMK DATO BENTARA LUAR</h1>
<p>Sistem Pengesahan Kehadiran Ahli</p>
</header>

<nav>
<?PHP if(!empty($_SESSION['tahap'])and $_SESSION['tahap'] == "ADMIN"){?>
    <!--Menu admin:dipaparkan sekiranya admin telah login-->
    | <a href='index.php'>Laman Utama</a>
    | <a href='profil.php'>Profil</a>
    | <a href='kehadiran-rekod.php'>Kaunter kehadiran</a>
    | <a href='senarai-ahli.php'>Senarai ahli</a>
    | <a href='senarai-aktiviti.php'>Senarai aktiviti</a>
    | <a href='kehadiran-laporan.php'>Laporan Kehadiran</a>
    | <a href='logout.php'>Logout</a>
    | <hr>
<?php }else if(!empty($_SESSION['tahap'])and $_SESSION['tahap'] == "AHLI BIASA"){?>
    <!--Menu ahli biasa:dipaparkan sekiranya ahli telah login-->
    | <a href='index.php'>Laman Utama</a>
    | <a href='profil.php'>Profil</a>
    | <a href='logout.php'>Logout</a>
    | <hr>
<?php }else{?>
    <!--Menu Laman Utama:dipaparkan sekiranya admin atau ahli tidak login-->
    | <a href='index.php'>Laman Utama</a>
    | <a href='login-borang.php'>Daftar Masuk Ahli</a>
    | <hr>
<?php }?>
</nav>
<article>