<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Book extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        _checkIsLogin();
        $this->load->model('LogAction_model', 'logaction');
    }

    public function index()
    {
        $data['title'] = 'Book Publisher';
        $data['user'] = $this->db->get_where('user_data', ['email' => $this->session->userdata('email')])->row_array();

        $data['book_publisher'] = $this->db->get('book_publisher')->result_array();

        $this->form_validation->set_rules('publisher', 'Publisher', 'required|is_unique[book_publisher.publisher]', [
            'required' => "Publisher name can't be empty",
            'is_unique' => 'A publisher with the name "' . htmlspecialchars($this->input->post('publisher')) . '" already exists. Please use another name if you want to add it!'
        ]);

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('layout/layout_header', $data);
            $this->load->view('layout/layout_sidebar');
            $this->load->view('layout/layout_topbar');
            $this->load->view('book/book_publisher');
            $this->load->view('layout/layout_footer');
        } else {
            $publisher = htmlspecialchars($this->input->post('publisher'));
            $this->db->insert('book_publisher', ['publisher' => $publisher]);

            $userLogAction = [
                'user_id' => $this->session->userdata('id_user'),
                'action' => 'Publisher "' . $publisher . '" has been added!',
            ];

            $this->logaction->insertLog($userLogAction);

            $this->session->set_flashdata('message', '<div class="alert alert-success mb-4">Publisher "<b>' . $publisher . '</b>" has been added!</div>');
            redirect('book');
        }
    }

    public function change_publisher_by_id()
    {
        $data['title'] = 'Book Publisher';
        $data['user'] = $this->db->get_where('user_data', ['email' => $this->session->userdata('email')])->row_array();

        $data['book_publisher'] = $this->db->get('book_publisher')->result_array();

        $this->form_validation->set_rules('publisher', 'Publisher', 'required|is_unique[book_publisher.publisher]', [
            'required' => "Publisher name can't be empty",
            'is_unique' => 'A publisher with the name "' . htmlspecialchars($this->input->post('publisher')) . '" already exists. Please use another name if you want to change it!'
        ]);

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('layout/layout_header', $data);
            $this->load->view('layout/layout_sidebar');
            $this->load->view('layout/layout_topbar');
            $this->load->view('book/book_publisher');
            $this->load->view('layout/layout_footer');
        } else {
            $id = htmlspecialchars($this->input->post('id'));
            $publisher = htmlspecialchars($this->input->post('publisher'));
            $publisherBefore = $this->db->get_where('book_publisher', ['id' => $id])->row_array();

            $this->db->where('id', $id);
            $this->db->update('book_publisher', ['publisher' => $publisher]);

            $userLogAction = [
                'user_id' => $this->session->userdata('id_user'),
                'action' => 'Publisher "' . $publisherBefore['publisher'] . '" has been change to "' . $publisher . '"!',
            ];

            $this->logaction->insertLog($userLogAction);

            $this->session->set_flashdata('message', '<div class="alert alert-success mb-4">Publisher "<b>' . $publisherBefore['publisher'] . '</b>" has been change to "<b>' . $publisher . '</b>"!</div>');
            redirect('book');
        }
    }

    public function delete_publisher_by_id()
    {
        $id = $this->uri->segment(3);
        $publisherName = $this->db->get_where('book_publisher', ['id' => $id])->row_array()['publisher'];
        $this->db->where('id', $id);
        $this->db->delete('book_publisher');

        $userLogAction = [
            'user_id' => $this->session->userdata('id_user'),
            'action' => 'Publisher "' . $publisherName . '" has been deleted!',
        ];

        $this->logaction->insertLog($userLogAction);

        $this->session->set_flashdata('message', '<div class="alert alert-success mb-4">Publisher "<b>' . $publisherName . '</b>" has been deleted!</div>');
        redirect('book');
    }

    public function get_publisher_by_id($publisherId)
    {
        $publisher = $this->db->get_where('book_publisher', ['id' => $publisherId])->row_array();
        exit(json_encode($publisher));
    }

    public function book_author()
    {
        $data['title'] = 'Book Author';
        $data['user'] = $this->db->get_where('user_data', ['email' => $this->session->userdata('email')])->row_array();

        $data['book_author'] = $this->db->get('book_author')->result_array();

        $this->form_validation->set_rules('author', 'Author', 'required|is_unique[book_author.author]', [
            'required' => "Author name can't be empty",
            'is_unique' => 'A author with the name "' . htmlspecialchars($this->input->post('author')) . '" already exists. Please use another name if you want to add it!'
        ]);

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('layout/layout_header', $data);
            $this->load->view('layout/layout_sidebar');
            $this->load->view('layout/layout_topbar');
            $this->load->view('book/book_author');
            $this->load->view('layout/layout_footer');
        } else {
            $author = htmlspecialchars($this->input->post('author'));
            $this->db->insert('book_author', ['author' => $author]);

            $userLogAction = [
                'user_id' => $this->session->userdata('id_user'),
                'action' => 'Author "' . $author . '" has been added!',
            ];

            $this->logaction->insertLog($userLogAction);

            $this->session->set_flashdata('message', '<div class="alert alert-success mb-4">Author "<b>' . $author . '</b>" has been added!</div>');
            redirect('book/book_author');
        }
    }

    public function change_author_by_id()
    {
        $data['title'] = 'Book Author';
        $data['user'] = $this->db->get_where('user_data', ['email' => $this->session->userdata('email')])->row_array();

        $data['book_author'] = $this->db->get('book_author')->result_array();

        $this->form_validation->set_rules('author', 'Author', 'required|is_unique[book_author.author]', [
            'required' => "Author name can't be empty",
            'is_unique' => 'A author with the name "' . htmlspecialchars($this->input->post('author')) . '" already exists. Please use another name if you want to change it!'
        ]);

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('layout/layout_header', $data);
            $this->load->view('layout/layout_sidebar');
            $this->load->view('layout/layout_topbar');
            $this->load->view('book/book_author');
            $this->load->view('layout/layout_footer');
        } else {
            $id = htmlspecialchars($this->input->post('id'));
            $author = htmlspecialchars($this->input->post('author'));
            $authorBefore = $this->db->get_where('book_author', ['id' => $id])->row_array();

            $this->db->where('id', $id);
            $this->db->update('book_author', ['author' => $author]);

            $userLogAction = [
                'user_id' => $this->session->userdata('id_user'),
                'action' => 'Author "' . $authorBefore['author'] . '" has been change to "' . $author . '"!',
            ];

            $this->logaction->insertLog($userLogAction);

            $this->session->set_flashdata('message', '<div class="alert alert-success mb-4">Author "<b>' . $authorBefore['author'] . '</b>" has been change to "<b>' . $author . '</b>"!</div>');
            redirect('book/book_author');
        }
    }

    public function delete_author_by_id()
    {
        $id = $this->uri->segment(3);
        $authorName = $this->db->get_where('book_author', ['id' => $id])->row_array()['author'];
        $this->db->where('id', $id);
        $this->db->delete('book_author');

        $userLogAction = [
            'user_id' => $this->session->userdata('id_user'),
            'action' => 'Author "' . $authorName . '" has been deleted!',
        ];

        $this->logaction->insertLog($userLogAction);

        $this->session->set_flashdata('message', '<div class="alert alert-success mb-4">Author "<b>' . $authorName . '</b>" has been deleted!</div>');
        redirect('book/book_author');
    }

    public function get_author_by_id($authorId)
    {
        $author = $this->db->get_where('book_author', ['id' => $authorId])->row_array();
        exit(json_encode($author));
    }
}
