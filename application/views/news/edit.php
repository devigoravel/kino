<form action="/news/edit/" method="post">
	
	<input class="form-control input-lg" type="input" name="slug" value="<?php echo $slug_news; ?>" placeholder="slug"></br>
	<input class="form-control input-lg" type="input" name="title" value="<?php echo $title_news; ?>" placeholder="название новости"></br>
	<textarea class="form-control input-lg" name="text" placeholder="текст новости"><?php echo $content_news; ?></textarea></br>
	<input class="btn" type="submit" name="submit" value="Добавить новость">

</form>