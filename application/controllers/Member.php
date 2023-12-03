<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Member extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        _checkIsLogin();
        $this->load->model('Book_model', 'book');
        $this->load->library("form_validation");
    }

    public function index()
    {
        $data['title'] = 'Dashboard';
        $data['user'] = $this->db->get_where('user_data', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->view('layout/layout_header', $data);
        $this->load->view('layout/layout_sidebar');
        $this->load->view('layout/layout_topbar');
        $this->load->view('member/member_index');
        $this->load->view('layout/layout_footer');
    }

    public function list_book()
    {
        $data['title'] = 'List Book';
        $data['user'] = $this->db->get_where('user_data', ['email' => $this->session->userdata('email')])->row_array();

        $data['books'] = $this->book->getAllBook();

        $this->load->view('layout/layout_header', $data);
        $this->load->view('layout/layout_sidebar');
        $this->load->view('layout/layout_topbar');
        $this->load->view('member/member_list_book');
        $this->load->view('layout/layout_footer');
    }
}
