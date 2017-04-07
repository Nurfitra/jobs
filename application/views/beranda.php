<div class="slider-area">
    <div class="slider">
        <div id="bg-slider" class="owl-carousel owl-theme">
         
          <div class="item"><img src="<?php echo base_url('assets'); ?>/img/slider-image-3.jpg" alt="Mirror Edge"></div>
          <div class="item"><img src="<?php echo base_url('assets'); ?>/img/slider-image-2.jpg" alt="The Last of us"></div>
          <div class="item"><img src="<?php echo base_url('assets'); ?>/img/slider-image-1.jpg" alt="GTA V"></div>
         
        </div>
    </div>
    <div class="container slider-content">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                <h2>Job Searching Just Got So Easy</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi deserunt deleniti, ullam commodi sit ipsam laboriosam velit adipisci quibusdam aliquam teneturo!</p>
                <div class="search-form wow pulse" data-wow-delay="0.8s">
                    <form action="<?php echo base_url('carikerja/pencarian'); ?>" class="form-inline" method="GET">
                        <div class="form-group">
                            <input type="text" name="keyword" class="form-control" placeholder="Cari Kerja">
                        </div>
                        <div class="form-group">
                            <select name="kota" class="form-control">
                                <option value="" selected>Semua Lokasi</option>
                                <?php foreach ($lowongan->result_array() as $row){ ?>
                                <option value="<?php echo $row['kota']; ?>"><?php echo $row['kota'].", ".$row['provinsi']; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <select name="kategori"  class="form-control">
                                <option value="" selected>Semua Kategori</option>                                
                                <?php foreach ($lowongan->result_array() as $row){ ?>
                                <option value="<?php echo $row['Kategori']; ?>"><?php echo $row['Kategori']; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <input type="submit" class="btn" value="Cari">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="content-area">
    <div class="container">
        <div class="row page-title text-center wow zoomInDown" data-wow-delay="1s">
            <h5>Our Process</h5>
            <h2>How we work for you?</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae illum dolorem, rem officia, id explicabo sapiente</p>
        </div>
        <div class="row how-it-work text-center">
            <div class="col-md-4">
                <div class="single-work wow fadeInUp" data-wow-delay="0.8s">
                    <img src="<?php echo base_url('assets'); ?>/img/how-work1.png" alt="">
                    <h3>Searching for the best job</h3>
                    <p>Using the outcomes from the job, we will put together a plan for the most effective marketing strategy to get the best results.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="single-work  wow fadeInUp"  data-wow-delay="0.9s">
                    <img src="<?php echo base_url('assets'); ?>/img/how-work2.png" alt="">
                    <h3>Searching for the best job</h3>
                    <p>Using the outcomes from the job, we will put together a plan for the most effective marketing strategy to get the best results.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="single-work wow fadeInUp"  data-wow-delay="1s">
                    <img src="<?php echo base_url('assets'); ?>/img/how-work3.png" alt="">
                    <h3>Searching for the best job</h3>
                    <p>Using the outcomes from the job, we will put together a plan for the most effective marketing strategy to get the best results.</p>
                </div>
            </div>
        </div>
    </div>
    <hr>

    <div class="container">
        <div class="row job-posting wow fadeInUp" data-wow-delay="1s">
            <div role="tabpanel">
              <!-- Nav tabs -->
              <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#employeers" aria-controls="profile" role="tab" data-toggle="tab">Employeers</a></li>
              </ul>

              <!-- Tab panes -->
              <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="employeers">
                    <ul class="list-inline">
                        <li>
                            <a href="">
                                <img src="<?php echo base_url('assets'); ?>/img/employee4.png" alt="">
                                <div class="overlay"><h3>Instagram</h3></div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="<?php echo base_url('assets'); ?>/img/employee5.png" alt="">
                                <div class="overlay"><h3>Microsoft</h3></div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="<?php echo base_url('assets'); ?>/img/employee6.png" alt="">
                                <div class="overlay"><h3>Dribbble</h3></div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="<?php echo base_url('assets'); ?>/img/employee1.png" alt="">
                                <div class="overlay"><h3>Beats Music</h3></div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="<?php echo base_url('assets'); ?>/img/employee2.png" alt="">
                                <div class="overlay"><h3>Facebook</h3></div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="<?php echo base_url('assets'); ?>/img/employee3.png" alt="">
                                <div class="overlay"><h3>Twitter</h3></div>
                            </a>
                        </li>
                    </ul>
                </div>
              </div>

            </div>
        </div>
    </div>
    <hr>
    
    <div class="container">
        <div class="row page-title text-center wow bounce"  data-wow-delay="1s">
            <h5>Lowongan Pekerjaan Terbaru</h5>
            <h2><span><?php echo $lowongan->num_rows(); ?></span> Lowongan Pekerjaan Tersedia</h2>
        </div>
        <div class="row jobs">
            <div class="col-md-12">
                <div class="job-posts table-responsive">
                    <table class="table">
                    <?php foreach ($lowongan->result_array() as $row) { ?>
                        <tr class="<?php if ($row['id_lowongan'] % 2 == 0) { echo 'even'; }else{ echo 'odd'; } ?> wow fadeInUp" data-wow-delay="1s">
                            <td class="tbl-logo"><img class="img-responsive" src="<?php echo base_url('assets/uploads/files').'/'.$row['logo_perusahaan']; ?>" alt=""></td>
                            <td class="tbl-title"><h4><?php echo $row['nama_lowongan']; ?><br><span class="job-type"><?php echo $row['waktu']; ?></span></h4></td>
                            <td><p><?php echo $row['nama_perusahaan']; ?></p></td>
                            <td><p><i class="icon-location"></i><?php echo $row['kota']; ?>, <?php echo $row['provinsi']; ?></p></td>
                            <td><p>&dollar; <?php echo $row['gaji']; ?></p></td>
                            <td class="tbl-apply"><a href="<?php echo base_url('carikerja/detail').'/'.$row['id_lowongan']; ?>">Lihat</a></td>
                        </tr>
                    <?php } ?>
                    </table>
                </div>
                <div class="more-jobs">
                    <a href=""> <i class="fa fa-refresh"></i>View more jobs</a>
                </div>
            </div>
        </div>
    </div>
    <hr>

    <div class="container">
        <div class="row page-title text-center  wow bounce"  data-wow-delay=".7s">
            <h5>TESTIMONIALS</h5>
            <h2>WHAT PEOPLES ARE SAYING</h2>
        </div>
        <div class="row testimonial">
            <div class="col-md-12">
                <div id="testimonial-slider">
                    <div class="item">
                        <div class="client-text">                                
                            <p>Jobify offer an amazing service and I couldn’t be happier! They 
                            are dedicated to helping recruiters find great candidates, wonderful service!</p>
                            <h4><strong>Ohidul Islam, </strong><i>Web Designer</i></h4>
                        </div>
                        <div class="client-face wow fadeInRight" data-wow-delay=".9s"> 
                            <img src="<?php echo base_url('assets'); ?>/img/client-face1.png" alt="">
                        </div>
                    </div>
                    <div class="item">
                        <div class="client-text">                                
                            <p>Jobify offer an amazing service and I couldn’t be happier! They 
                            are dedicated to helping recruiters find great candidates, wonderful service!</p>
                            <h4><strong>Ohidul Islam, </strong><i>Web Designer</i></h4>
                        </div>
                        <div class="client-face">
                            <img src="<?php echo base_url('assets'); ?>/img/client-face2.png" alt="">
                        </div>
                    </div>
                    <div class="item">
                        <div class="client-text">                                
                            <p>Jobify offer an amazing service and I couldn’t be happier! They 
                            are dedicated to helping recruiters find great candidates, wonderful service!</p>
                            <h4><strong>Ohidul Islam, </strong><i>Web Designer</i></h4>
                        </div>
                        <div class="client-face">
                            <img src="<?php echo base_url('assets'); ?>/img/client-face1.png" alt="">
                        </div>
                    </div>
                    <div class="item">
                        <div class="client-text">                                
                            <p>Jobify offer an amazing service and I couldn’t be happier! They 
                            are dedicated to helping recruiters find great candidates, wonderful service!</p>
                            <h4><strong>Ohidul Islam, </strong><i>Web Designer</i></h4>
                        </div>
                        <div class="client-face">
                            <img src="<?php echo base_url('assets'); ?>/img/client-face2.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
