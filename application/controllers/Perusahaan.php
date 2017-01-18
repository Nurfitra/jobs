<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Perusahaan extends CI_Controller {
	public function index()
	{
		$this->load->model('M_user');
		$data['perusahaan'] = $this->M_user->get_lowongan();
		$this->load->view('layout/header');
		$this->load->view('perusahaan', $data);
		$this->load->view('layout/footer');
	}
	public function lowongan($id)
	{
		$this->load->model('M_user');
		$data['lowongan'] = $this->M_user->get_lowongan_id('id_perusahaan', $id);
		$this->load->view('layout/header');
		$this->load->view('carikerja', $data);
		$this->load->view('layout/footer');
	}
}
