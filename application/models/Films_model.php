<?php

class Films_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    // Метод для вывода рейтинга
    public function getFilmsByRating($limit)
    {
        $query = $this->db
            // сортируем от большого значения
            ->order_by('rating', 'desc')
            // выбираем только категорию 1
            ->where('category_id', 1)
            // выбираем райтинг > 0
            ->where('rating>', 0 )
            // устанавливаем лимит
            ->limit($limit)
            // указываем таблицу
            ->get('movie');

        return $query->result_array();
            
    }
}