<?php
# Memulakan fungsi session
session_start();

# Memanggil fail header.php 
include('header.php');
?>

<!--Tajuk antaramuka log masuk-->
<h3>Login Ahli</h3>

<!--borang daftar masuk (login/sign in)-->
<form action ='login-proses.php'method='POST'>
    nokp        <input type='text'      name='nokp'> <br>
    katalaluan  <input type='password'  name='katalaluan'> <br>
                <input type='submit'    name='Login'>
</form>
<?php include('footer.php');?>