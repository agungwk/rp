<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        if($this->session->userdata('data')==null){
        	redirect('setup/login');
        }
        $this->load->model('m_elearning');
        $this->load->model('m_administrator');
        $this->load->model('m_murid');
        $this->load->model('m_guru');
    }

	public function index()
	{
		$idUser = $this->session->userdata('data')['id'];

		// tipe dashboard
		if ($this->session->userdata('data')['type'] == "instruktur") {
			$data = array(
				'content' => 'main/dashboard_guru',
				'title'=>'Dashboard',
				'href'=>'Dashboard',
				'url_home'=>''
				);
				$data['dashboardTransaksiGuru'] = $this->m_guru->dashboardTransaksiGuru($idUser)->result();
				$data['totalTransaksiGuru'] = $this->m_guru->totalTransaksiGuru($idUser)->result();
				$data['totalJmlTransaksiGuru'] = $this->m_guru->totalJmlTransaksiGuru($idUser)->result();
				$data['totalModulGuru'] = $this->m_guru->totalModulGuru($idUser)->result();
				$data['totalMuridGuru'] = $this->m_guru->totalMuridGuru($idUser)->result();
		} else if ($this->session->userdata('data')['type'] == "admin") {
			$data = array(
				'content' => 'main/dashboard_admin',
				'title'=>'Dashboard',
				'href'=>'Dashboard',
				'url_home'=>''
				);
		} else {
			$data = array(
				'content' => 'main/dashboard_murid',
				'title'=>'Dashboard',
				'href'=>'Dashboard',
				'url_home'=>''
				);
				$data['getTotalTransaksiMurid'] = $this->m_murid->getTotalTransaksiMurid($idUser);
				$data['getTotalModulMurid'] = $this->m_murid->getTotalModulMurid($idUser);
				$data['getTotalModulNilaiMurid'] = $this->m_murid->getTotalModulNilaiMurid($idUser);
				$data['getRataNilaiMurid'] = $this->m_murid->getRataNilaiMurid($idUser);
				$data['getJmlTransaksiMurid'] = $this->m_murid->getJmlTransaksiMurid($idUser);
		}

		//notif admin
		$getNotifAdminGuru = $this->m_administrator->notifAdminGuru()->row();
		$data['notif_admin_guru'] = $getNotifAdminGuru->notif_admin_guru;

		$getNotifAdminTxVerf = $this->m_administrator->notifAdminTxVerf()->row();
		$data['notif_admin_tx_verf'] = $getNotifAdminTxVerf->notif_admin_tx_verf;

		$getNotifAdminTxClear = $this->m_administrator->notifAdminTxClear()->row();
		$data['notif_admin_tx_clear'] = $getNotifAdminTxClear->notif_admin_tx_clear;

		//notif murid
		$getNotifMuridVerf = $this->m_murid->notifMuridVerf($idUser)->row();
		$data['notif_murid_verf'] = $getNotifMuridVerf->notif_murid_verf;

		//notif guru
		$getNotifGuruMuridBaru = $this->m_guru->notifGuruMuridBaru($idUser)->row();
		$data['notif_guru_murid_baru'] = $getNotifGuruMuridBaru->notif_guru_murid_baru;

		$getNotifGuruMuridBelajar = $this->m_guru->notifGuruMuridBelajar($idUser)->row();
		$data['notif_guru_murid_belajar'] = $getNotifGuruMuridBelajar->notif_guru_murid_belajar;

		$getNotifGuruMuridNilai = $this->m_guru->notifGuruMuridNilai($idUser)->row();
		$data['notif_guru_murid_nilai'] = $getNotifGuruMuridNilai->notif_guru_murid_nilai;

		$getNotifGuruTx = $this->m_guru->notifGuruTx($idUser)->row();
		$data['notif_guru_tx'] = $getNotifGuruTx->notif_guru_tx;

		$this->load->view('main/home',$data);
	}

	function doku()
	{
		$idUser = $this->session->userdata('data')['id'];
		$data = array(
			'content' => 'main/view_doku',
			'title'=>'Doku',
			'href'=>'doku',
			'url_home'=>''
			);

		$this->load->view('main/home',$data);

	}
}
