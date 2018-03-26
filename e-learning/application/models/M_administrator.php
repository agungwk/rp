<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_administrator extends CI_Model {

	public function getDataTransaction()
	{
		$this->db->select('transaksi.*, guru.nama as nama_guru,murid.nama as nama_murid, belajar.harga as total_harga');
		$this->db->from('transaksi');
		$this->db->join('belajar','belajar.id = transaksi.id_belajar');
		$this->db->join('murid','murid.id = belajar.id_murid');
		$this->db->join('guru','guru.id = belajar.id_guru');
		$this->db->order_by('created_at','DESC');
		$query = $this->db->get();
		// echo $query = $this->db->last_query();
		return $query->result();
	}

	public function notifAdminGuru()
	{
		$this->db->where('status',0);
		$this->db->from('guru');
		$this->db->select('COUNT(status) as notif_admin_guru');
		return $this->db->get();
	}

	public function notifAdminTxVerf()
	{
		$this->db->where('status_verf',1);
		$this->db->from('transaksi');
		$this->db->select('COUNT(status_verf) as notif_admin_tx_verf');
		return $this->db->get();
	}

	public function notifAdminTxClear()
	{
		$this->db->where('status_clear',2);
		$this->db->from('transaksi');
		$this->db->select('COUNT(status_clear) as notif_admin_tx_clear');
		return $this->db->get();
	}

	public function getDataGuru($table,$id=null)
	{
		$this->db->from($table);
		if($id){
			$this->db->where('id',$id);
		}
		$this->db->where('status !=','2');
		$this->db->order_by('id','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// total data murid
	public function getCountDataMurid() {
		$this->db->select('count(m.id) as total_murid');
		$this->db->from('murid m');
		$query = $this->db->get();
		return $query->result();
	}

	// total data guru
	public function getCountDataGuru() {
		$this->db->select('count(m.id) as total_guru');
		$this->db->from('guru m');
		$query = $this->db->get();
		return $query->result();
	}

	// total transaksi
	public function totalTransaksi() {
		$this->db->select('sum(b.harga) as total_harga');
		$this->db->from('transaksi t');
		$this->db->join('belajar b','t.id_belajar=b.id');
		$this->db->where('t.tgl_verified is not null',NULL, FALSE);
		$this->db->where('t.status_verf', 2);
		$query = $this->db->get();
		return $query->result();
	}

	// jumlah transaksi
	public function totalJmlTransaksi() {
		$this->db->select('count(b.harga) as total_transaksi');
		$this->db->from('transaksi t');
		$this->db->join('belajar b','t.id_belajar=b.id');
		$this->db->where('t.tgl_verified is not null',NULL, FALSE);
		$this->db->where('t.status_verf', 2);
		$query = $this->db->get();
		return $query->result();
	}

}
