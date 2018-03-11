<?php
// menyimpan hasil inputan kedalam variabel
$nama_lengkap = $_POST['nama_lengkap'];
$options      = array("cost"=>4);
$pass         = password_hash($_POST['password'],PASSWORD_BCRYPT,$options);
$email        = $_POST['email'];
$id_user      = $_POST['id_user'];


include 'koneksi.php';
// sintaks sql untuk insert data

if(empty($pass)){
    $sql = "update user set nama_lengkap='$nama_lengkap',email='$email' where id_user='$id_user'";
}else{
    $sql = "update user set nama_lengkap='$nama_lengkap',email='$email',password='$pass' where id_user='$id_user'";
}


// perintah untuk mengeksekusi query di atas
$insert = mysqli_query($konek, $sql);
/*
if($insert){
    echo "insert data berhasil";
}  else {
    echo "insert data gagal";
}
*/


header("location:user.php");
?>
