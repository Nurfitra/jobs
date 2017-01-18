<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Beranda extends CI_Controller {
	public function index()
	{
		$this->load->model('M_user');
		$data['lowongan'] = $this->M_user->get_lowongan();
		$this->load->view('layout/header');
		$this->load->view('beranda', $data);
		$this->load->view('layout/footer');
	}
}
