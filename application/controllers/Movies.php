<?php

defined('BASEPATH') or exit('No direc script access allowed');

class Movies extends MY_Controller 
{
    public function __construct()
    {
        parent::__construct();

    }

    /**
     * Просмотр страницы фильмов или сериалов
    */
    public function type($slug = NULL)
    {
        // Подгружаем библиотеку пагинации
        $this->load->library('pagination');

        $this->data['movie_data'] = null;

        // Устанавливаем лимит страниц
        $offset = (int) $this->uri->segment(4);

        // Количество, которое будем выводить на странице
        $row_count = 10;

        $count = 0;

       


        if($slug == 'films')
        {
             // Сколько всего страниц
            $count = count($this->films_model->getFilms(0, 1));

            // Для пагинации
            $p_config['base_url'] = '/movies/type/films/';

            $this->data['title'] = 'Фильмы';
            //$this->data['movie_data'] = $this->films_model->getFilms(false, 10,1);
            $this->data['movie_data'] = $this->films_model->getMoviesOnPage($row_count, $offset, 1);
        }

        if($slug == 'serials')
        {
             // Сколько всего страниц
            $count = count($this->films_model->getFilms(0, 2));

            // Для пагинации
            $p_config['base_url'] = '/movies/type/serials/';

            $this->data['title'] = 'Сериалы';
            //$this->data['movie_data'] = $this->films_model->getFilms(false, 10,2);\
            $this->data['movie_data'] = $this->films_model->getMoviesOnPage($row_count, $offset, 2);
        }

        if($this->data['movie_data'] == null)
        {
            show_404();
        }

        // Config для пагинации
        $p_config['total_rows'] = $count;
        $p_config['per_page'] = $row_count;

        $p_config['full_tag_open'] = "<ul class='pagination'>";
		$p_config['full_tag_close'] ="</ul>";
		$p_config['num_tag_open'] = '<li>';
		$p_config['num_tag_close'] = '</li>';
		$p_config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
		$p_config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
		$p_config['next_tag_open'] = "<li>";
		$p_config['next_tagl_close'] = "</li>";
		$p_config['prev_tag_open'] = "<li>";
		$p_config['prev_tagl_close'] = "</li>";
		$p_config['first_tag_open'] = "<li>";
		$p_config['first_tagl_close'] = "</li>";
		$p_config['last_tag_open'] = "<li>";
		$p_config['last_tagl_close'] = "</li>";

        // Иницилизируем наш пагинатор
        $this->pagination->initialize($p_config);

        $this->data['pagination'] = $this->pagination->create_links();

        // Подключаем вид страницы
        $this->load->view('templates/header', $this->data);
        $this->load->view('movies/type', $this->data);
        $this->load->view('templates/footer');
    }

    /**
     * Просмотр определенного фильма по slug 
    */
    public function view($slug = NULL)
    {
        $movie_slug = $this->films_model->getFilms($slug, false, false);

        if(empty($movie_slug))
        {
            show_404();
        }

        // переменная для title
        $this->data['title'] = $movie_slug['name'];

        $this->data['year'] = $movie_slug['year'];
        $this->data['rating'] = $movie_slug['rating'];
        $this->data['descriptions_movie'] = $movie_slug['descriptions'];
        $this->data['player_code'] = $movie_slug['player_code'];

        // Подключаем вид страницы
        $this->load->view('templates/header', $this->data);
        $this->load->view('movies/view', $this->data);
        $this->load->view('templates/footer');
    }
}