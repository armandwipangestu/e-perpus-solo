<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Book_model extends CI_Model
{
    public function getAllBook()
    {
        $query = "
            SELECT `bd`.*, `bp`.`publisher`, `ba`.`author` 
            FROM `book_data` AS bd
            JOIN `book_publisher` AS bp
                ON `bd`.`publisher_id` = `bp`.`id`
            JOIN `book_author` AS ba
                ON `bd`.`author_id` = `ba`.`id`
        ";

        return $this->db->query($query)->result_array();
    }

    public function getBookById($id)
    {
        $query = "
            SELECT `bd`.`id`, `bd`.`cover_image`, `bd`.`title`, 
            `bd`.`synopsis`, `bd`.`language`, `bd`.`publish_date`, `bd`.`total_page`, `bd`.`quantity_available`,
            `bd`.`created_at`, `bd`.`updated_at`, `bd`.`publisher_id`, `bd`.`author_id`, `bp`.`publisher`, `ba`.`author`
            FROM `book_data` AS bd
            JOIN `book_publisher` AS bp
                ON `bd`.`publisher_id` = `bp`.`id`
            JOIN `book_author` AS ba
                ON `bd`.`author_id` = `ba`.`id`
            WHERE `bd`.`id` = '$id'
        ";

        $book = $this->db->query($query)->row();

        $publishers = $this->db->get('book_publisher')->result();
        $book->publishers = $publishers;

        $authors = $this->db->get('book_author')->result();
        $book->authors = $authors;

        return $book;
    }
}