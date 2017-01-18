<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_user extends CI_Model {

	public function cek_user($user, $pass)
	{
		$this->db->where('email', $user);
		$this->db->or_where('username', $user);
		$this->db->where('password', md5($pass));
		return $this->db->get('admin');
	}
	public function get_lowongan()
	{
		$this->db->join('lokasi','lokasi_penempatan = lokasi.id_lokasi');
		$this->db->join('perusahaan','perusahaan = perusahaan.id_perusahaan');
		$this->db->join('kategori_pekerjaan','kategori_pekerjaan = kategori_pekerjaan.id_kategori');
		return $this->db->get('lowongan');
	}
	public function get_lowongan_id($field, $id)
	{
		$this->db->where($field, $id);
		$this->db->join('lokasi','lokasi_penempatan = lokasi.id_lokasi');
		$this->db->join('perusahaan','perusahaan = perusahaan.id_perusahaan');
		$this->db->join('kategori_pekerjaan','kategori_pekerjaan = kategori_pekerjaan.id_kategori');
		return $this->db->get('lowongan');
	}
	public function cari_lowongan($key, $kota, $kategori)
	{
		$this->db->like('nama_lowongan', $key);
		$this->db->or_like('kota', $kota);
		$this->db->or_like('kategori', $kategori);
		$this->db->join('lokasi','lokasi_penempatan = lokasi.id_lokasi');
		$this->db->join('perusahaan','perusahaan = perusahaan.id_perusahaan');
		$this->db->join('kategori_pekerjaan','kategori_pekerjaan = kategori_pekerjaan.id_kategori');
		return $this->db->get('lowongan');
	}
}