<?php
// pastikan parameter ISBN Ada
$isbn = isset($_GET['isbn']);
// kalau data nya ada maka silahkan eksekusi
if($isbn){
    include 'koneksi.php';
    $delete = mysqli_query($konek, "delete from buku where isbn='$isbn'");
}
// balik he halaman list buku
header("location:index.php");
?>
