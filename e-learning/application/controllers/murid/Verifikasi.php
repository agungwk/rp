<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Verifikasi extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        if($this->session->userdata('data')==null){
        	redirect('setup/login');
        }
        $this->load->model('m_murid');
        $this->load->model('m_elearning');
        $this->load->library('upload');
				$this->load->library('veritrans');
    }

	public function index()
	{
		$param['belajar.id_murid'] = $this->session->userdata('data')['id'];
		$data = array('content' => 'murid/view_verifikasi','href'=>'Verifikasi Belajar',
			'url_home'=>'murid/verifikasi');
		$data['data_belajar'] = $this->m_murid->getDataVerifikasi($param)->result();

		//notif murid
		$idNotifMurid = $this->session->userdata('data')['id'];
		$getNotifMuridVerf = $this->m_murid->notifMuridVerf($idNotifMurid)->row();
		$data['notif_murid_verf'] = $getNotifMuridVerf->notif_murid_verf;

		$this->load->view('main/home',$data);


	}

	public function verifikasi_belajar($id)
	{
		$param['belajar.id'] = $id;
		$data = array('content' => 'murid/form_verifikasi','href'=>'Verifikasi Belajar',
			'url_home'=>'murid/verifikasi');
		$data['data_belajar'] = $this->m_murid->getDataVerifikasi($param)->row();

		//notif murid
		$idNotifMurid = $this->session->userdata('data')['id'];
		$getNotifMuridVerf = $this->m_murid->notifMuridVerf($idNotifMurid)->row();
		$data['notif_murid_verf'] = $getNotifMuridVerf->notif_murid_verf;

		$this->load->view('main/home',$data);
	}

	public function saveData()
	{
		date_default_timezone_set('asia/Jakarta');
		$config = array(
			'upload_path' => "./assets/file/verifikasi/",
			'allowed_types' => "jpg|png|jpeg|pdf|mkv|mp4|mp3|avi",
			'overwrite' => TRUE,
			'max_size' => "114091846000000000"
		);

		$this->upload->initialize($config);
		if($this->upload->do_upload('file')){
			$data = array('upload_data' => $this->upload->data());
			$fileName = $data['upload_data']['file_name'];

			$param['id_belajar'] = $this->input->post('id');
			$data = array(
				"status_verf" => 1,
				"file" => $fileName,
				'tgl_verified' => date('Y-m-d H:i:s')
			);

			$query = $this->m_elearning->updateData($param,"transaksi",$data);
			if($query){
				$success = "alert alert-success";
				$message = "Data has been Verification";
				$icon = "icon fa fa-check";
			}else{
				$success = "alert alert-danger";
				$message = "Data failed to Verification";
				$icon = "icon fa fa-ban";
			}
		}else{
			$success = "alert alert-danger";
			$message = $this->upload->display_errors();
		}

		$this->session->set_flashdata("k", "<div class=\"$success alert-dismissible\">
                <h4><i class=\"$icon\"></i> Alert!</h4>
                $message
              </div>");
		redirect('murid/verifikasi');
	}

	public function tombol1()
	{
		$data = array('content' => 'murid/tombol1','href'=>'Verifikasi tombol1',
			'url_home'=>'murid/tombol1');
		$this->load->view('main/home',$data);
	}

	public function tombol2()
	{
		$data = array('content' => 'murid/tombol2','href'=>'Verifikasi tombol2',
			'url_home'=>'murid/tombol2');
		$this->load->view('main/home',$data);
	}

	public function tombol3()
	{
		$data = array('content' => 'murid/tombol3','href'=>'Verifikasi tombol3',
			'url_home'=>'murid/tombol3');
		$this->load->view('main/home',$data);
	}

	public function tombol4()
	{
		$data = array('content' => 'murid/tombol4','href'=>'Verifikasi tombol4',
			'url_home'=>'murid/tombol4');
		$this->load->view('main/home',$data);
	}

	public function notification_veritrans()
	{
		// echo 'test notification handler';
		$json_result = file_get_contents('php://input');
		$result = json_decode($json_result);
		if($result){
			/*
			$transaction = $notif->transaction_status;
			$type = $notif->payment_type;
			$order_id = $notif->order_id;
			$fraud = $notif->fraud_status;
			if ($transaction == 'capture') {
			  // For credit card transaction, we need to check whether transaction is challenge by FDS or not
			  if ($type == 'credit_card'){
			    if($fraud == 'challenge'){
			      // TODO set payment status in merchant's database to 'Challenge by FDS'
			      // TODO merchant should decide whether this transaction is authorized or not in MAP
			      echo "Transaction order_id: " . $order_id ." is challenged by FDS";
			      }
			      else {
			      // TODO set payment status in merchant's database to 'Success'
			      echo "Transaction order_id: " . $order_id ." successfully captured using " . $type;
			      }
			    }
			  }
			else if ($transaction == 'settlement'){
			  // TODO set payment status in merchant's database to 'Settlement'
			  echo "Transaction order_id: " . $order_id ." successfully transfered using " . $type;
			  }
			  else if($transaction == 'pending'){
			  // TODO set payment status in merchant's database to 'Pending'
			  echo "Waiting customer to finish transaction order_id: " . $order_id . " using " . $type;
			  }
			  else if ($transaction == 'deny') {
			  // TODO set payment status in merchant's database to 'Denied'
			  echo "Payment using " . $type . " for transaction order_id: " . $order_id . " is denied.";
			}*/
			$notif = $this->veritrans->status($result->order_id);


		} else {
			$order_id = $this->input->get('order_id');
	    $statusCode = $this->input->get('status_code');
	    $transaction  = $this->input->get('transaction_status');
			$statusDesc = '';

			if($transaction == 'capture') {
			  $statusDesc = "Transaksi berhasil.";
			}
			// Deny
			else if($transaction == 'deny') {
			  $statusDesc = 'Transaksi ditolak.';
			}
			// Challenge
			else if($transaction == 'challenge') {
			  $statusDesc = "Transaksi challenge.";
			}
			// Error
			else {
			  $statusDesc = "Terjadi kesalahan pada data transaksi yang dikirim.";
			}

			// $data = array('content' => 'murid/tombol1','href'=>'Verifikasi tombol1',
			// 	'url_home'=>'murid/verifikasi_sukses');
			// 
			$data = array('content' => 'murid/verifikasi_sukses','href'=>'Hasil Verifikasi',
				'url_home'=>'murid/verifikasi');
			$data['statusDesc'] = $statusDesc;
			$data['order_id'] = $order_id;
			$this->load->view('main/home',$data);
		}
		// error_log(print_r($result,TRUE));

		//notification handler sample

	}

}
