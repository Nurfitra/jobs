<div class="content-area">
    <div class="container">
        <div class="row page-title text-center wow zoomInDown" data-wow-delay="1s">
            <h1><b>Cari</b>Kerja</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae illum dolorem, rem officia, id explicabo sapiente</p>
        </div>
        <div class="row how-it-work text-center">
            <?php $delay=5; foreach ($lowongan->result_array() as $row) { ?>
            <div class="col-md-4">
                <div class="single-work wow fadeInUp" data-wow-delay="0.<?php echo $delay; ?>s">
                    <img src="<?php echo base_url('assets/uploads/files').'/'.$row['logo_perusahaan']; ?>" alt="">
                    <h3><?php echo $row['nama_lowongan']; ?></h3>
                    <span class="text-muted"><?php echo $row['waktu']; ?> | <?php echo $row['gaji']; ?></span>
                    <p><?php echo character_limiter(strip_tags($row['detail_info']), 200); ?>.</p>
                    <a href="<?php echo base_url('carikerja/detail').'/'.$row['id_lowongan']; ?>" class="btn btn-primary">Lihat Selengkapnya</a>
                </div>
            </div>
            <?php $delay++; } ?>
        </div>
    </div>
</div>