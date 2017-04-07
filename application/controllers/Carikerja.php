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
		if($this->input->get('keyword') != ""){
			$cari = $this->input->get('keyword');
		}else{
			$cari = "";
		}
		if($this->input->get('kota') != ""){
			$kota = $this->input->get('kota');
		}else{
			$kota = "";
		}
		if($this->input->get('kategori') != ""){
			$kategori = $this->input->get('kategori');
		}else{
			$kategori = "";
		}
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
