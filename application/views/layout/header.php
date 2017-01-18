<!DOCTYPE html>
 <html class="no-js">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>CariKerja | Page</title>
        <meta name="description" content="company is a free job board template">
        <meta name="author" content="Ohidul">
        <meta name="keyword" content="html, css, bootstrap, job-board">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link rel="stylesheet" href="<?php echo base_url('assets'); ?>/css/normalize.css">
        <link rel="stylesheet" href="<?php echo base_url('assets'); ?>/css/font-awesome.min.css">
        <link rel="stylesheet" href="<?php echo base_url('assets'); ?>/css/fontello.css">
        <link rel="stylesheet" href="<?php echo base_url('assets'); ?>/css/animate.css">        
        <link rel="stylesheet" href="<?php echo base_url('assets'); ?>/css/bootstrap.min.css">
        <link rel="stylesheet" href="<?php echo base_url('assets'); ?>/css/owl.carousel.css">
        <link rel="stylesheet" href="<?php echo base_url('assets'); ?>/css/owl.theme.css">
        <link rel="stylesheet" href="<?php echo base_url('assets'); ?>/css/owl.transitions.css">
        <link rel="stylesheet" href="<?php echo base_url('assets'); ?>/style.css">
        <link rel="stylesheet" href="<?php echo base_url('assets'); ?>/responsive.css">
        <script src="<?php echo base_url('assets'); ?>/js/vendor/modernizr-2.6.2.min.js"></script>
    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->
		

        <nav class="navbar navbar-default">
          <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="<?php echo base_url(); ?>"><img src="<?php echo base_url('assets'); ?>/img/logo.png" alt=""></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="main-nav nav navbar-nav navbar-right">
                <li class="wow fadeInDown" data-wow-delay="0s"><a <?php if(current_url() == base_url()){ echo 'class="active"'; } ?> href="<?php echo base_url(); ?>">Beranda</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.1s"><a <?php if(current_url() == base_url('carikerja')){ echo 'class="active"'; } ?> href="<?php echo base_url('carikerja'); ?>">Cari Kerja</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.2s"><a <?php if(current_url() == base_url('perusahaan')){ echo 'class="active"'; } ?> href="<?php echo base_url('perusahaan'); ?>">Perusahaan</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.3s"><a <?php if(current_url() == base_url('tentangkami')){ echo 'class="active"'; } ?> href="<?php echo base_url('tentangkami'); ?>">Tentang Kami</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.5s"><a <?php if(current_url() == base_url('kontak')){ echo 'class="active"'; } ?> href="<?php echo base_url('kontak'); ?>">Kontak</a></li>
              </ul>
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>