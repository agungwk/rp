<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
	public function __construct()
    {
        parent::__construct();
        $this->load->model('m_elearning');
    }

	public function index()
	{
		$data = array('content' => 'setup/login','role' => 'user');
		$this->load->view('setup/index',$data);
	}

	public function login()
	{
		$data = array('email'=>$this->input->post('email'),'password'=>$this->input->post('password'));

		if($this->input->post('type') == "murid"){
			$table = "murid";
		}else{
			$data['status'] = 1;
			$table = "guru";
		}

		$query = $this->m_elearning->getData($data,$table);
		if($query->num_rows() > 0){
			$foto = "";
			foreach ($query->result() as $value) {
				if($this->input->post('type') == "guru"){
					$foto = $value->foto;
				}
				 $sessionArray['data'] = array('id'=>$value->id,                    
                                        'nama'=>$value->nama,
                                        'email'=>$value->email,
                                        'type'=>$this->input->post('type'),
                                        'foto' => $foto

                                    );
                                    
                    $this->session->set_userdata($sessionArray);
                    redirect('home');
			}
		}else{
			$success = "alert alert-danger";
			$message = "Invalid User";
			$icon = "icon fa fa-ban";

			$this->session->set_flashdata("k", "<div class=\"$success alert-dismissible\">
		    <h4><i class=\"$icon\"></i> Alert!</h4>
		    $message 
		  </div>");

		redirect('setup/login');
		}
	}

	public function log_out()
	{
		$this->session->unset_userdata('data');
		$this->session->sess_destroy();
		redirect('setup/login','refresh'); 
	}

	public function forgot_pass()
	{
	$config = Array(
        'protocol' => 'smtp',
        'smtp_host' => 'mail.gmx.com',
        'smtp_port' => 465, // 587,
        'smtp_user' => 'hanavilzen03@gmail.com',
        'smtp_pass' => 'fikrihanavilzen03',
        'smtp_crypto' => 'tls',
        'smtp_timeout' => '20',
        'mailtype'  => 'html', 
        'charset'   => 'iso-8859-1'
    );
    $config['newline'] = "\r\n";
    $config['crlf'] = "\r\n";
    $this->load->library('email', $config);
    $this->email->from('hanavilzen03@gmail.com', 'Admin');
    $this->email->to('hanavilzen2016@gmail.com');
    $this->email->subject('New Password');
    $this->email->message('This is new your password : QWEASD');

    //$this->email->send();
    if ( ! $this->email->send()) {
        return false;
    }
    return true;
}

public function test()
{
	echo "asdfsd";
}
}
