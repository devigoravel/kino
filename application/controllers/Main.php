<?php

defined('BASEPATH') or exit('No direc script access allowed');

class Main extends MY_Controller 
{
    public function __construct()
    {
        parent::__construct();

    }

    /**
     *Главная страница 
    */
    public function index() 
    {
        // Подключаем title
        $this->data['title'] = 'Главная страница';

        // Подгружаем модель
        $this->load->model('films_model');

        // переменная со всеми фильмами
        $this->data['movie'] = $this->films_model->getFilms(false, 4, 1);


        // Подключаем вид страницы
        $this->load->view('templates/header', $this->data);
        $this->load->view('main/index', $this->data);
        $this->load->view('templates/footer');

    }
}