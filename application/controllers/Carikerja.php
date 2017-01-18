<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Carikerja extends CI_Controller {
	public function index()
	{
		$this->load->model('M_user');
		$data['lowongan'] = $this->M_user->get_lowongan();
		$this->load->view('layout/header');
		$this->load->view('carikerja', $data);
		$this->load->view('layout/footer');
	}
	public function pencarian()
	{
		$this->load->model('M_user');
		$cari = $this->input->get('keyword');
		$kota = $this->input->get('kota');
		$kategori = $this->input->get('kategori');
		$data['lowongan'] = $this->M_user->cari_lowongan($cari, $kota, $kategori);
		$this->load->view('layout/header');
		$this->load->view('carikerja', $data);
		$this->load->view('layout/footer');
	}
	public function detail($id)
	{
		$this->load->model('M_user');
		$data['lowongan'] = $this->M_user->get_lowongan_id('id_lowongan', $id);
		$this->load->view('layout/header');
		$this->load->view('detailcarikerja', $data);
		$this->load->view('layout/footer');
	}
}
