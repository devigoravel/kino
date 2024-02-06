<!-- CONTENT (index) start -->

<h2>Новые фильмы</h2>
<hr>
<div class="row">

    <?php foreach($movie as $key => $value) : ?>
    <div class="films_block col-lg-3 col-md-3 col-sm-3 col-xs-6">
        <a href="show.html"><img src="<?php echo $value['poster']; ?>" alt="интерстеллар"></a>
        <div class="film_label"><a href="show.html"><?php echo $value['name']; ?></a></div>
    </div>
    <?php endforeach ?>

    

</div>

<div class="margin-8"></div>

<h2>Новые сериалы</h2>
<hr>
<div class="row">

    <div class="films_block col-lg-3 col-md-3 col-sm-3 col-xs-6">
        <a href="#"><img src="assets/img/xfiles.png" alt=""></a>
        <div class="film_label"><a href="#">Секретные материалы</a></div>
    </div>

    <div class="films_block col-lg-3 col-md-3 col-sm-3 col-xs-6">
        <a href="#"><img src="assets/img/silicon.png" alt=""></a>
        <div class="film_label"><a href="#">Кремневая долина</a></div>
    </div>

    <div class="films_block col-lg-3 col-md-3 col-sm-3 col-xs-6">
        <a href="#"><img src="assets/img/dead.png" alt=""></a>
        <div class="film_label"><a href="#">Ходячие мертвецы</a></div>
    </div>

    <div class="films_block col-lg-3 col-md-3 col-sm-3 col-xs-6">
        <a href="#"><img src="assets/img/breakingbad.png" alt=""></a>
        <div class="film_label"><a href="#">Во все тяжкие</a></div>
    </div>

</div>

<div class="margin-8"></div>

<a href="#">
    <h3>Как снимали Интерстеллар</h3>
</a>
<hr>
<p>
    45 лет исполнилось Кристоферу Нолану — одному из самых успешных режиссеров нашего времени, чьи работы одинаково
    любимы как взыскательными критиками, так и простыми зрителями. Фильмом изначально занималась студия Paramount. Когда
    Кристофер Нолан занял место режиссера, студия Warner Bros., которая выпускала его последние фильмы, добилась участия
    в проекте.
</p>
<a href="#" class="btn btn-warning pull-right">читать</a>

<div class="margin-8"></div>

<a href="#">
    <h3>Актер Том Хенкс поделился впечатлением о фестивале</h3>
</a>
<hr>
<p>
    16 февраля в Лондоне состоялась 67-я церемония вручения наград Британской киноакадемии. Леонардо ДиКаприо, Брэд
    Питт, Анджелина Джоли, Кейт Бланшетт, Хелен Миррен, Эми Адамс, Кристиан Бэйл, Альфонсо Куарон и другие гости и
    победители премии — в нашем репортаже.
</p>
<a href="#" class="btn btn-warning pull-right">читать</a>

<div class="margin-8 clear"></div>

<!-- CONTENT (index) end -->