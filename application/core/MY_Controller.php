<?php

class MY_Controller extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        $this->data["title"] = "Кинотеатр - найди любой фильм";

        // Подключаем модель с новостями
        $this->load->model('news_model');
        
        // Создаем переменную для передачи массива с новостями
        $this->data['news'] = $this->news_model->getNews();

        // Обращаемся к модели Films_model.php
        $this->load->model('films_model');

        // Создаем переменную для передачи массива фильмов с рейтингом
        $this->data['films'] = $this->films_model->getFilmsByRating(10);

    }
}