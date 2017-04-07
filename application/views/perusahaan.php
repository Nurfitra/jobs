<div class="content-area">
    <div class="container">
        <div class="row page-title text-center wow zoomInDown" data-wow-delay="1s">
            <h1><b>Perusahaan</b> Terdaftar</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae illum dolorem, rem officia, id explicabo sapiente</p>
        </div>
        <div class="row job-posting wow fadeInUp" data-wow-delay="1s">
            <div role="tabpanel">

              <!-- Tab panes -->
              <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="employeers">
                    <ul class="list-inline">
                        <?php foreach ($perusahaan->result_array() as $row) { ?>
                        <li class="single-work wow fadeInUp logo" data-wow-delay="0.5s">
                            <a href="<?php echo base_url('perusahaan/lowongan').'/'.$row['id_perusahaan']; ?>">
                                <img class="img-responsive" src="<?php echo base_url('assets/uploads/files').'/'.$row['logo_perusahaan']; ?>" alt="<?php echo $row['nama_perusahaan']; ?>" />
                                <div class="overlay">
                                <h3><?php echo $row['nama_perusahaan']; ?></h3>
                                </div>
                            </a>
                        </li>
                        <?php } ?>
                    </ul>
                </div>
              </div>

            </div>
        </div>
    </div>
</div>