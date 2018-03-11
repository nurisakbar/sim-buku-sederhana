<?php
// pastikan parameter ISBN Ada
$id_user = isset($_GET['id']);
// kalau data nya ada maka silahkan eksekusi
if($id_user){
    include 'koneksi.php';
    $delete = mysqli_query($konek, "delete from user where id_user='$id_user'");
}
// balik he halaman list buku
header("location:user.php");
?>
