 <?php
include_once "header.php";

include_once "../functions/functions.php";

$binatang = query("SELECT * FROM binatang JOIN kategori ON binatang.id_kategori = kategori.id_kategori");



?>
        <div class="w-100 vh-100" id="home">
        <div id="carouselExample" class="carousel slide carousel-fade h-100">
            <div class="carousel-inner h-100">
                <div class="carousel-item h-100 active">
                    <img src="../img/book1.jpg" class="d-block w-100 h-70 object-fit-cover" alt="Gambar 1">
                </div>
                <div class="carousel-item h-100">
                    <img src="../img/book2.jpg" class="d-block w-100 h-100 object-fit-cover" alt="Gambar 2">
                </div>
                <div class="carousel-item h-100">
                    <img src="../img/book3.jpg" class="d-block w-100 h-100 object-fit-cover" alt="Gambar 3">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>


            <div class="col-12 p-5">
                    <h1 class="display-4"> Home</h1>
                    <p align="justify">Web perpustakaan yang saya kerjakan adalah sebuah platform inovatif yang dirancang untuk memberikan akses mudah dan cepat kepada pengguna untuk mengeksplorasi dan mengakses beragam koleksi literatur. Dengan antarmuka yang ramah pengguna dan fitur pencarian yang canggih, web ini memungkinkan pengguna untuk menelusuri ribuan buku, artikel, dan sumber informasi lainnya. Selain itu, sistem manajemen peminjaman yang efisien dan integrasi dengan teknologi terkini memudahkan pengguna dalam meminjam dan mengembalikan materi perpustakaan secara online. Dengan fokus pada pengalaman pengguna yang optimal, web perpustakaan ini juga menyediakan rekomendasi personalisasi berdasarkan preferensi bacaan pengguna, menciptakan lingkungan virtual yang memotivasi dan mendukung pembelajaran dan penelitian.</p>
                </div>
              
<?php
include_once "footer.php"
?>

<script type="text/javascript">
  $('.nav-link').removeClass('active');
  $('.menu-home').addClass('active');
</script>
