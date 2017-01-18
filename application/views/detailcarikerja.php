<div class="content-area">
    <div class="container">
        <?php foreach ($lowongan->result_array() as $row) { ?>
        <div class="row page-title wow zoomInDown" data-wow-delay="0.5s">
            <img class="wow zoomInDown" data-wow-delay="1s" src="<?php echo base_url('assets/uploads/files').'/'.$row['logo_perusahaan']; ?>" alt=""><br/>
            <div class="wow zoomInDown" data-wow-delay="1.1s"><?php echo $row['nama_perusahaan']; ?></div>
            <hr>
            <h1><?php echo $row['nama_lowongan']; ?></h1>
            <span><?php echo $row['waktu']; ?> | <?php echo $row['gaji']; ?></span>
            <p><?php echo $row['detail_info']; ?></p><br/>
        </div>
        <?php } ?>
    </div>
</div>