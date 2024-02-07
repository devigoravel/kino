<?php

class Films_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    // Вывод фильмов
    public function getFilms($slug = FALSE, $limit, $type = 1)
    {
        if($slug === FALSE)
        {
            // Все фильмы
            $query = $this->db
                ->where('category_id', $type)
                ->order_by('add_date')
                ->limit($limit)
                ->get('movie');

            return $query->result_array();
        }

        // Какой-то определенный фильм
        $query = $this->db->get_where('movie', array('slug'=> $slug));
        return $query->row_array();
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
            ->where('rating > ', 0 )
            // устанавливаем лимит
            ->limit($limit)
            // указываем таблицу
            ->get('movie');

        return $query->result_array();
            
    }

    // Метод для пагинации
    public function getMoviesOnPage($row_count, $offset, $type = 1)
    {
        $query = $this->db
            // выбираем категорию
            ->where('category_id', $type)
            // сортируем
            ->order_by('add_date', 'desc')
            // указываем таблицу
            ->get('movie', $row_count, $offset);
        
            return $query->result_array();

    }
}