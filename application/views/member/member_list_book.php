<section class="section">
    <div class="card">
        <div class="card-header">
            <h4>Recently Added</h4>
        </div>
        <div class="card-body">

            <!-- <div id="carouselTrendingBooks" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <?php
                    // Memecah array $books menjadi potongan-potongan dengan 5 buku per potongan
                    $chunks = array_chunk($books, 6);

                    // Iterasi melalui setiap potongan buku untuk membuat carousel item
                    foreach ($chunks as $key => $chunk) :
                    ?>
                        <div class="carousel-item<?= $key === 0 ? ' active' : '' ?>">
                            <div class="row">
                                <?php
                                // Iterasi melalui buku-buku dalam potongan saat ini
                                foreach ($chunk as $book) :
                                ?>
                                    <div class="col-lg-2 col-md-3 col-sm-4 col-6 p-2">
                                        <img src="<?= base_url(); ?>assets/img/cover_image/<?= $book['cover_image'] ?>" class="cover-image" alt="Cover Image">
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
                <a class="carousel-control-prev carousel-control left" href="#carouselTrendingBooks" role="button" data-bs-slide="prev">
                    <i class="fas fa-fw fa-arrow-alt-circle-left"></i>
                </a>
                <a class="carousel-control-next carousel-control right" href="#carouselTrendingBooks" role="button" data-bs-slide="next">
                    <i class="fas fa-fw fa-arrow-alt-circle-right"></i>
                </a>
            </div> -->

            <div id="carouselExampleControls" class="carousel slide ms-5" data-ride="carousel">
                <div class="carousel-inner">
                    <?php
                    // Memecah array $books menjadi potongan-potongan dengan 5 buku per potongan
                    $chunks = array_chunk($books, 6);

                    // Iterasi melalui setiap potongan buku untuk membuat carousel item
                    foreach ($chunks as $key => $chunk) :
                    ?>
                        <div class="carousel-item<?= $key === 0 ? ' active' : '' ?>">
                            <div class="row row-cols-auto p-5">
                                <?php
                                // Iterasi melalui buku-buku dalam potongan saat ini
                                foreach ($chunk as $book) :
                                ?>
                                    <div class="col">
                                        <img src="<?= base_url(); ?>assets/img/cover_image/<?= $book['cover_image'] ?>" class="cover-image" alt="Cover Image">
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </a>
        </div>
    </div>

    <div class="card">
        <div class="card-header">
            <h4>Classic Books</h4>
        </div>
        <div class="card-body">
            <div id="carouselClassicBooks" class="carousel slide p-5" data-ride="carousel">
                <div class="carousel-inner">
                    <?php
                    // Memecah array $books menjadi potongan-potongan dengan 6 buku per potongan
                    $chunks = array_chunk($books, 5);

                    // Iterasi melalui setiap potongan buku untuk membuat carousel item
                    foreach ($chunks as $key => $chunk) :
                    ?>
                        <div class="carousel-item<?= $key === 0 ? ' active' : '' ?>">
                            <div class="row row-cols-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5">
                                <?php
                                // Iterasi melalui buku-buku dalam potongan saat ini
                                foreach ($chunk as $book) :
                                ?>
                                    <div class="col">
                                        <img src="<?= base_url(); ?>assets/img/cover_image/<?= $book['cover_image'] ?>" class="cover-image" alt="Cover Image">
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>

            <a class="carousel-control-prev" href="#carouselClassicBooks" role="button" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselClassicBooks" role="button" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </a>
        </div>
    </div>
</section>