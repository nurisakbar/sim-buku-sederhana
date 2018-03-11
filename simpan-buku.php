<?php
// menyimpan hasil inputan kedalam variabel
$isbn           = $_POST['isbn'];
$judul_buku     = $_POST['judul_buku'];
$penulis        = $_POST['penulis'];
$kategori       = $_POST['kategori'];
$deskripsi      = $_POST['deskripsi'];
$harga          = $_POST['harga'];

include 'koneksi.php';

// upload cover
$file_name  = $_FILES['cover']['name'];
$file_tmp   = $_FILES['cover']['tmp_name'];
move_uploaded_file($file_tmp,"cover/".$file_name);

// sintaks sql untuk insert data
$sql = "insert into buku SET isbn='$isbn',judul_buku='$judul_buku',harga='$harga',
    id_kategori='$kategori',id_penulis='$penulis',deskripsi='$deskripsi',cover='$file_name'";
// perintah untuk mengeksekusi query di atas
$insert = mysqli_query($konek, $sql);
/*
if($insert){
    echo "insert data berhasil";
}  else {
    echo "insert data gagal";
}
*/
header("location:index.php");
?>
