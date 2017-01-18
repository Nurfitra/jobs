<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tentangkami extends CI_Controller {
	public function index()
	{
		$this->load->view('layout/header');
		$this->load->view('tentang');
		$this->load->view('layout/footer');
	}
}
