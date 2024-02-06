<?php 

class News_model extends CI_Model {

	public function __construct() {
		/**
		 * В конструкторе класса News_model загружается библиотека . 
		 * базы данных с помощью $this->load->database();
		 * Это позволяет модели взаимодействовать с базой данных
		*/
		$this->load->database();
	}

	/**
	 *  Метод getNews($slug = FALSE) используется для получения новостей из базы данных.
	 *  Если параметр $slug не передан, метод возвращает все новости в виде массива результатов.
	 *  Если передан параметр $slug, метод выбирает конкретную новость с соответствующим идентификатором (slug)
	 *  и возвращает ее как массив результатов.
	*/
	public function getNews($slug = FALSE) {
		if($slug === FALSE) {
			$query = $this->db->get('news');
			return $query->result_array();
		}

		$query = $this->db->get_where('news', array('slug' => $slug));
		return $query->row_array();
	}

	/**
	 * Метод setNews($slug, $title, $text) используется для добавления новой новости в базу данных.
	 * Он принимает заголовок, текст и уникальный идентификатор (slug) новости, формирует массив данных и добавляет его в таблицу news.
	*/
	public function setNews($slug, $title, $text) {

		$data = array(
			'title' => $title,
			'slug' => $slug, 
			'text' => $text
		);

		return $this->db->insert('news', $data);

	}

	/**
	 * Метод updateNews($slug, $title, $text) обновляет существующую новость в базе данных.
	 * Он принимает новый заголовок, текст и уникальный идентификатор новости,
	 * формирует массив данных и обновляет запись в таблице news, используя условие по полю slug.
	*/
	public function updateNews($slug, $title, $text) {

		$data = array(
			'title' => $title,
			'slug' => $slug, 
			'text' => $text
		);

		return $this->db->update('news', $data, array('slug' => $slug));

	}

	/**
	 *  Метод deleteNews($slug) удаляет выбранную новость из базы данных.
	 *  Он использует условие по полю slug для удаления соответствующей записи из таблицы news.
	*/
	public function deleteNews($slug) {
		return $this->db->delete('news', array('slug' => $slug));
	}

}

/**
 * Эта модель предоставляет основные функции для работы с данными новостей:
 * получение, добавление, обновление и удаление. Она взаимодействует с базой данных через библиотеку CodeIgniter
 * и предоставляет контроллеру News необходимые методы для управления новостями.
*/