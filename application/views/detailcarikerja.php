<div class="content-area">
    <div class="container">
        <?php foreach ($lowongan->result_array() as $row) { ?>
        <div class="row page-title wow zoomInDown" data-wow-delay="0.5s">
            <img class="wow zoomInDown img-responsive" data-wow-delay="1s" src="<?php echo base_url('assets/uploads/files').'/'.$row['logo_perusahaan']; ?>" alt=""><br/>
            <div class="wow zoomInDown" data-wow-delay="1.1s"><h1><?php echo $row['nama_perusahaan']; ?></h1></div>
            <hr>
            <div class="col-md-6">
            <h1><?php echo $row['nama_lowongan']; ?></h1>
            <span><?php echo $row['waktu']; ?> | <?php echo $row['gaji']; ?></span>
            <p><?php echo $row['detail_info']; ?></p><br/>
            </div>
            <div class="col-md-6">
                <div class="embed-responsive embed-responsive-16by9">
                    <video width="550" height="300" controls >
                    <source src="<?php echo base_url('assets/uploads/files').'/'.$row['video_perusahaan']; ?>" type="video/mp4"/>
                    </video>
                </div>
            </div><br/><br/>
        </div>
        <?php } ?>
    </div>
</div>