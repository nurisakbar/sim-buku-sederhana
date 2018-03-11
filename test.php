<?php
$pass = "test123";
$hash = password_hash($pass,PASSWORD_BCRYPT);
echo $hash;
die;
if(password_verify($pass,$hash)){
    echo "ok";
}else{
    echo "gagal";
}
?>
