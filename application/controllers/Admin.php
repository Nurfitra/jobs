<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->helper('url');
		$this->load->library('grocery_CRUD');
	}
	public function index()
	{
		if($this->session->has_userdata('user'))
		{
			redirect('admin/dash');
		}else{
			$this->load->view('login');
		}
	}
	public function dash()
	{
		if($this->session->has_userdata('user'))
		{
			$data['page'] = 'Dashboard';
			$this->load->view('admin/dash', $data);
		}else{
			$this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">Kamu harus masuk!<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
			redirect('admin');
		}
	}
	public function logout()
	{
		$this->session->sess_destroy();
		redirect('admin');
	}
	public function cek()
	{
		$this->load->model('M_user');
		$user = $this->input->post('username');
		$pass = $this->input->post('password');
		$cek_login = $this->M_user->cek_user($user,$pass);
		if($cek_login->num_rows() <> 0)
		{
			$this->session->set_userdata('user', $cek_login->result_array());
			redirect('admin/dash');
		}else{
			$this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">Username/Kata sandi Salah!<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
			redirect('admin');
		}
	}
	public function perusahaan()
	{
		if($this->session->has_userdata('user'))
		{
			$crud = new grocery_CRUD();

			$crud->set_theme('flexigrid');
			$crud->set_table('perusahaan');
			$crud->set_subject('Perusahaan');
			$crud->set_field_upload('logo_perusahaan','assets/uploads/files');
			$output = $crud->render();
			$this->load->view('admin/pagecontent', $output);
		}else{
			$this->load->view('login');
		}
	}
	public function kategori_pekerjaan()
	{
		if($this->session->has_userdata('user'))
		{
			$crud = new grocery_CRUD();

			$crud->set_theme('flexigrid');
			$crud->set_table('kategori_pekerjaan');
			$crud->set_subject('Kategori Pekerjaan');
			$output = $crud->render();
			$this->load->view('admin/pagecontent', $output);
		}else{
			$this->load->view('login');
		}
	}
	public function lowongan()
	{
		if($this->session->has_userdata('user'))
		{
			$crud = new grocery_CRUD();

			$crud->set_theme('flexigrid');
			$crud->set_table('lowongan');
			$crud->set_subject('Lowongan Pekerjaan');
			$crud->set_relation('perusahaan','perusahaan','nama_perusahaan');
			$crud->set_relation('kategori_pekerjaan','kategori_pekerjaan','Kategori');
			$crud->set_relation('lokasi_penempatan','lokasi','kota');
			$output = $crud->render();
			$this->load->view('admin/pagecontent', $output);
		}else{
			$this->load->view('login');
		}
	}
	public function lokasi_pekerjaan()
	{
		if($this->session->has_userdata('user'))
		{
			$crud = new grocery_CRUD();

			$crud->set_theme('flexigrid');
			$crud->set_table('lokasi');
			$crud->set_subject('Lokasi Pekerjaan');
			$output = $crud->render();
			$this->load->view('admin/pagecontent', $output);
		}else{
			$this->load->view('login');
		}
	}
}
