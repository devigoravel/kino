<?php

defined('BASEPATH') or exit('No direc script access allowed');

class News extends MY_Controller
{

	public function __construct()
	{
		parent::__construct();
		// Подключаем модель News_model.php
		$this->load->model('news_model');
	}

	// Метод отображения всех новостей
	public function index()
	{
		$data['title'] = "Все новости";
		$data['news'] = $this->news_model->getNews();

		$this->load->view('templates/header', $data);
		$this->load->view('news/index', $data);
		$this->load->view('templates/footer');

	}

	/**
	 *Метод view($slug) отображает отдельную новость на странице,
	 *используя ее уникальный идентификатор (slug).
	 *Если новость не найдена, вызывается функция show_404() для показа страницы ошибки 404
	 */

	public function view($slug = NULL)
	{
		$this->data['news_item'] = $this->news_model->getNews($slug);

		if (empty($this->data['news_item'])) {
			show_404();
		}

		$this->data['title'] = $this->data['news_item']['title'];
		$this->data['content'] = $this->data['news_item']['text'];

		$this->load->view('templates/header', $this->data);
		$this->load->view('news/view', $this->data);
		$this->load->view('templates/footer');
	}

	/**
	 *Метод create() отображает форму для добавления новости и обрабатывает отправленную форму.
	 *Если новость успешно добавлена, отображается страница успешного добавления.
	 */
	public function create()
	{
		$this->data['title'] = "добавить новость";

		if ($this->input->post('slug') && $this->input->post('title') && $this->input->post('text')) {

			$slug = $this->input->post('slug');
			$title = $this->input->post('title');
			$text = $this->input->post('text');

			if ($this->news_model->setNews($slug, $title, $text)) {
				$this->load->view('templates/header', $this->data);
				$this->load->view('news/success', $this->data);
				$this->load->view('templates/footer');
			}
		} else {
			$this->load->view('templates/header', $this->data);
			$this->load->view('news/create', $this->data);
			$this->load->view('templates/footer');
		}

	}

	/**
	 * Метод edit($slug) отображает форму редактирования выбранной новости
	 * и обновляет ее данные в базе данных при отправке формы.
	 */
	public function edit($slug = NULL)
	{
		$this->data['title'] = "редактировать новость";
		$this->data['news_item'] = $this->news_model->getNews($slug);

		/* if(empty($data['news_item'])) {
				  show_404();
			  }*/

		$this->data['title_news'] = $this->data['news_item']['title'];
		$this->data['content_news'] = $this->data['news_item']['text'];
		$this->data['slug_news'] = $this->data['news_item']['slug'];

		if ($this->input->post('slug') && $this->input->post('title') && $this->input->post('text')) {
			$slug = $this->input->post('slug');
			$title = $this->input->post('title');
			$text = $this->input->post('text');

			if ($this->news_model->updateNews($slug, $title, $text)) {
				echo "Новость успешно отредактирована";
			}
		}

		$this->load->view('templates/header', $this->data);
		$this->load->view('news/edit', $this->data);
		$this->load->view('templates/footer');

	}

	/**
	 * Метод delete($slug) отображает страницу подтверждения удаления
	 * новости и удаляет ее из базы данных при подтверждении
	 */
	public function delete($slug = NULL)
	{
		$this->data['news_delete'] = $this->news_model->getNews($slug);

		if (empty($this->data['news_delete'])) {
			show_404();
		}

		$this->data['title'] = "удалить новость";
		$this->data['result'] = "Ошибка удаления " . $this->data['news_delete']['title'];

		if ($this->news_model->deleteNews($slug)) {
			$this->data['result'] = $this->data['news_delete']['title'] . " успешно удалена";
		}

		$this->load->view('templates/header', $this->data);
		$this->load->view('news/delete', $this->data);
		$this->load->view('templates/footer');

	}


}