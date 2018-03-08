<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_murid extends CI_Model {

	public function getMasterPelajaran()
	{
		$this->db->select('*');
		$this->db->from('master_mata_pelajaran');
		$query = $this->db->get();
		return $query;
	}

	public function getPembelajar($id_master_mata_pelajaran=null)
	{
		$this->db->select('
			mata_pelajaran.*,
			master_mata_pelajaran.mata_pelajaran,
			guru.nama,
			guru.pengalaman,
			guru.deskripsi
			');
		$this->db->from('mata_pelajaran');
		$this->db->join('master_mata_pelajaran','master_mata_pelajaran.id = mata_pelajaran.id_master_mata_pelajaran');
		$this->db->join('guru','guru.id = mata_pelajaran.id_guru');

		if($id_master_mata_pelajaran){
			$this->db->where('mata_pelajaran.id_master_mata_pelajaran',$id_master_mata_pelajaran);
		}

		$query = $this->db->get();
		return $query;

	}

	public function getDataPelajaran($params=null)
	{
		$this->db->select('
			belajar.*,
			guru.nama,
			');
		$this->db->from('belajar');
		$this->db->join('guru','guru.id = belajar.id_guru');

		if($params){
			$this->db->where('mata_pelajaran.id',$params);
		}
		$this->db->where('id_guru',$this->session->userdata('data')['id']);
		$query = $this->db->get();
		return $query;

	}

	public function getDataProfile($id)
	{
		$this->db->where('id',$id);
		$this->db->from('murid');
		return $this->db->get();
	}

	public function getNilai($id_murid = null)
	{
		$this->db->select('
			a.*,
			b.nama,
			c.mata_pelajaran,
			');
		$this->db->from('belajar a');
		$this->db->join('guru b','b.id = a.id_guru','left');
		$this->db->join('master_mata_pelajaran c','c.id = a.id_master_mata_pelajaran','left');

		if($id_murid){
			$this->db->where('a.id_murid',$id_murid);
		}

		$query = $this->db->get();
		return $query;
	}


	public function getDataGuru($id)
	{

		$this->db->select('file_modul.file,modul.id, modul.id_guru,modul.mata_pelajaran, modul.modul,modul.harga, guru.nama, guru.pengalaman, guru.deskripsi,guru.foto');
		$this->db->from('file_modul');
		$this->db->join('modul','modul.id = file_modul.id_modul');
		$this->db->join('guru','guru.id = modul.id_guru');
		$this->db->join('quiz','quiz.id_modul = modul.id');
		$this->db->where('file_modul.id_modul',$id);
		$this->db->or_like('modul.mata_pelajaran',$id);
		$this->db->or_like('modul.modul',$id);
		$this->db->order_by('guru.nama','ASC');
		$this->db->group_by('file_modul.id_modul');
		$query = $this->db->get();
		// $query = $this->db->last_query();
		return $query;

		// $this->db->select('modul.* ,guru.nama, guru.deskripsi, guru.foto');
		// $this->db->from('modul');
		// $this->db->join('guru','guru.id = modul.id_guru');
		// $this->db->like('modul.modul',$id);
		// $this->db->or_like('modul.mata_pelajaran',$id);
		// $this->db->order_by('guru.nama','ASC');

		// return $this->db->get();
	}

	public function getDetailDataGuru($id)
	{
		$this->db->select('modul.* ,guru.nama, guru.deskripsi, guru.pengalaman, guru.foto, file_modul.file');
		$this->db->from('modul');
		$this->db->join('guru','guru.id = modul.id_guru');
		$this->db->join('file_modul','file_modul.id_modul = modul.id');
		$this->db->where('modul.id',$id);
		$query = $this->db->get();
		// $query = $this->db->last_query();
		return $query;
	}

	public function getFileDataGuru($id)
	{
		$this->db->select('modul.* ,guru.nama, guru.deskripsi, guru.pengalaman, guru.foto, file_modul.file');
		$this->db->from('modul');
		$this->db->join('guru','guru.id = modul.id_guru');
		$this->db->join('file_modul','file_modul.id_modul = modul.id');
		$this->db->where('modul.id',$id);
		$query = $this->db->get();
		// $query = $this->db->last_query();
		return $query;
	}

	public function getDataVerifikasi($param)
	{
	$this->db->select('belajar.*, modul.mata_pelajaran, modul.modul, murid.nama as murid, guru.id as guru_id, guru.nama, guru.email, guru.telp, guru.skype,date(transaksi.tgl_clear) as date, transaksi.no_invoice,transaksi.status_verf, transaksi.status_clear');
		$this->db->from('belajar');
		$this->db->join('modul','modul.id = belajar.id_modul');
		$this->db->join('guru','guru.id = belajar.id_guru');
		$this->db->join('murid','murid.id = belajar.id_murid');
		$this->db->join('transaksi','transaksi.id_belajar = belajar.id');
		$this->db->where($param);
		$this->db->order_by('transaksi.id','DESC');
		return $this->db->get();

	}


	public function getDaftarDataGuru($id_murid = null)
	{
		$this->db->select('
			a.*,
			b.nama,
			c.mata_pelajaran,
			');
		$this->db->from('belajar a');
		$this->db->join('guru b','b.id = a.id_guru','left');
		$this->db->join('master_mata_pelajaran c','c.id = a.id_master_mata_pelajaran','left');

		if($id_murid){
			$this->db->where('a.id_murid',$id_murid);
		}

		$query = $this->db->get();
		return $query;

	}

	public function getModul($param)
	{
		$this->db->where($param);
		$this->db->from('file_modul');
		$query = $this->db->get();
		return $query;
	}

	public function notifMuridVerf($id)
	{
		$this->db->select('COUNT(transaksi.status_verf) as notif_murid_verf');
		$this->db->from('belajar');
		$this->db->join('transaksi','transaksi.id_belajar = belajar.id');
		$this->db->where('transaksi.status_verf',0);
		$this->db->where('belajar.id_murid',$id);
		return $this->db->get();
	}

	// dashboard grafik total transaksi murid
	public function getTotalTransaksiMurid($id) {
		$this->db->select('date(b.created_at) as created_at, sum(case when (t.status_verf = 0) then b.harga else 0 end) as verf_0, sum(case when (t.status_verf = 1) then b.harga else 0 end) as verf_1, sum(case when (t.status_verf = 2) then b.harga else 0 end) as verf_2');
		$this->db->from('transaksi t');
		$this->db->join('belajar b','t.id_belajar=b.id');
		$this->db->where('b.id_murid',$id);
		$this->db->group_by('date(b.created_at)');
		$this->db->order_by('b.id_murid','ASC');
		$this->db->order_by('b.created_at','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// dashboard total modul
	public function getTotalModulMurid($id) {
		$this->db->select('count(distinct(b.id_modul)) as total_modul');
		$this->db->from('belajar b');
		$this->db->where('b.id_murid',$id);
		$query = $this->db->get();
		return $query->result();
	}

	// dashboard total modul yang sudah dinilai
	public function getTotalModulNilaiMurid($id) {
		$this->db->select('count(distinct(b.id_modul)) as total_nilai');
		$this->db->from('belajar b');
		$this->db->where('b.id_murid',$id);
		$this->db->where('b.nilai is not null',NULL, FALSE);
		$query = $this->db->get();
		return $query->result();
	}

	// dashboard rata-rata nilai
	public function getRataNilaiMurid($id) {
		$this->db->select('cast((sum(b.nilai) / count(distinct(b.id_modul))) as int) as rata_nilai');
		$this->db->from('belajar b');
		$this->db->where('b.id_murid',$id);
		$this->db->where('b.nilai is not null',NULL, FALSE);
		$query = $this->db->get();
		return $query->result();
	}

	// dashboard total nominal transaksi berhasil
	public function getJmlTransaksiMurid($id) {
		$this->db->select('sum(b.harga) as total_harga');
		$this->db->from('transaksi t');
		$this->db->join('belajar b','t.id_belajar=b.id');
		$this->db->where('b.id_murid',$id);
		$this->db->where('t.status_verf',2);
		$query = $this->db->get();
		return $query->result();
	}

}
