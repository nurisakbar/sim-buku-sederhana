<?php
session_start();
if(empty($_SESSION['status_login'])){
    header("location:login.php");
}

include 'koneksi.php';
?>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Aplikasi Pengelolaan Buku</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" >
        <style type="text/css">
            
            .container{
                margin-top: 20px;
            }
        </style>


    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">SIM PENGELOLAAN BUKU</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">HOME <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php">DATA BUKU</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">DATA PENULIS</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="user.php">DATA PENGGUNA APLIKASI</a>
                    </li>

                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li  class="nav-item">
                        <a href="" class="nav-link" ><?php echo $_SESSION['nama_user']?></a>
                    </li>
                    <li class="nav-item">
                        <a href="logout.php" class="nav-link" >Logout</a>
                    </li>
                </ul>
            </div>
        </nav>