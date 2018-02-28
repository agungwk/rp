<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mata_pelajaran extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        if($this->session->userdata('data')==null){
        	redirect('setup/login');
        }
        $this->load->model('m_elearning');
        $this->load->model('m_guru');
    }

	public function index()
	{
		$data = array('content' => 'guru/view_mata_pelajaran','href'=>'Mata Pelajaran',
			'url_home'=>'guru/mata_pelajaran');
		$data['data_mata_pelajaran'] = $this->m_guru->getMasterMataPelajaran()->result();
		//notif guru
		$idUser = $this->session->userdata('data')['id'];
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

	public function inputData()
	{
		$data = array('content' => 'guru/form_mata_pelajaran','href'=>'Input mata pelajaran',
			'url_home'=>'guru/mata_pelajaran');
		$data['data_mata_pelajaran'] = $this->m_elearning->getDataAll('master_mata_pelajaran');
		//notif guru
		$idUser = $this->session->userdata('data')['id'];
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

	public function saveData()
	{
		$data = array(
			"id_guru" => $this->session->userdata('data')['id'],
			"id_master_mata_pelajaran" => $this->input->post('id_master_mata_pelajaran'),
			"harga" => $this->input->post('harga'),
		);

		$query = $this->m_elearning->saveData('mata_pelajaran',$data);
		if($query){
			$success = "alert alert-success";
			$message = "Data has been added";
			$icon = "icon fa fa-check";
		}else{
			$success = "alert alert-danger";
			$message = "Data failed to insert";
			$icon = "icon fa fa-ban";
		}	
		$this->session->set_flashdata("k", "<div class=\"$success alert-dismissible\">
                <h4><i class=\"$icon\"></i> Alert!</h4>
                $message 
              </div>");

		redirect('guru/mata_pelajaran');
		
	}

	public function editData($id)
	{
		$data = array('content'=> 'guru/form_mata_pelajaran','data' => $this->m_guru->getMasterMataPelajaran($id)->result(),'href'=>'Ubah Mata Pelajaran',
			'url_home'=>'guru/mata_pelajaran');
		$data['data_mata_pelajaran'] = $this->m_elearning->getDataAll('master_mata_pelajaran');
		//notif guru
		$idUser = $this->session->userdata('data')['id'];
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

	public function updateData()
	{
		$params['id'] = $this->input->post('id');
		$data['id_master_mata_pelajaran'] = $this->input->post('id_master_mata_pelajaran');
		$data['harga'] = $this->input->post('harga');

		$query = $this->m_elearning->updateData($params,'mata_pelajaran',$data);
		if($query){
			$success = "alert alert-success";
			$message = "Data has been update";
			$icon = "icon fa fa-check";
		}else{
			$success = "alert alert-danger";
			$message = "Data failed to insert";
			$icon = "icon fa fa-ban";
		}	
		$this->session->set_flashdata("k", "<div class=\"$success alert-dismissible\">
                <h4><i class=\"$icon\"></i> Alert!</h4>
                $message 
              </div>");	
		redirect('guru/mata_pelajaran');
	}

	public function deleteData($id)
	{
		$params['id'] = $id;
		$query = $this->m_elearning->deleteData($params,'mata_pelajaran');
		if($query){
			$success = "alert alert-success";
			$message = "Data has been delete";
			$icon = "icon fa fa-check";
		}else{
			$success = "alert alert-danger";
			$message = "Data failed to delete";
			$icon = "icon fa fa-ban";
		}	
		$this->session->set_flashdata("k", "<div class=\"$success alert-dismissible\">
                <h4><i class=\"$icon\"></i> Alert!</h4>
                $message 
              </div>");	
		redirect('guru/mata_pelajaran');

	}
}
