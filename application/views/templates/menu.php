<!-- MENU start -->
<div class="col-lg-3 col-lg-pull-9"> <!-- Меняем блоки местами col-lg-pull-9 -->
  
  <div class="panel panel-info hidden-xs">
    <div class="panel-heading"><div class="sidebar-header">Поиск</div></div>
    <div class="panel-body">
      <form role="search">
        <div class="form-group">
          <div class="input-group">
            <input type="search" class="form-control input-lg" placeholder="Ваш запрос">
            <div class="input-group-btn">
              <button class="btn btn-default btn-lg" type="submit"><i class="glyphicon glyphicon-search"></i></button>
            </div>
          </div>
        </div>
      </form> 
    </div>
  </div>

  <div class="panel panel-info">
    <div class="panel-heading"><div class="sidebar-header">Вход</div></div>
    <div class="panel-body">

      <form role="form">
        <div class="form-group">
          <input type="text"  class="form-control input-lg" placeholder="Логин">
        </div>
        <div class="form-group">
          <input type="password" class="form-control input-lg" placeholder="Пароль">
        </div>

        <button type="submit" class="btn btn-warning pull-right">вход</button>

      </form>

    </div>
  </div>  


  <div class="panel panel-info">
    <div class="panel-heading"><div class="sidebar-header">Новости</div></div>
    <div class="panel-body">
      
      <!-- <p>31.02.2017</p>
      <p>Мы запустили новый сервис</p> -->
      <?php foreach ($news as $key => $value) :?>
        <p><a href="/news/view/<?php echo $value['slug']; ?>"><?php echo $value['title']; ?></a></p>
      <?php endforeach ?>
      
    </div>
  </div>


  <div class="panel panel-info">
    <div class="panel-heading"><div class="sidebar-header">Рейтинг фильмов</div></div>
    <div class="panel-body">
        
        <ul class="list-group">
          <?php foreach( $films as $key => $value) :?>
            <li class="list-group-item list-group-warning">
              <span class="badge"><?php echo $value['rating']; ?></span>
              <a href="/movies/view/<?php echo $value['slug']; ?>/"><?php echo $value['name']; ?></a>
            </li>
          <?php endforeach ?>
        </ul>

    </div>
  </div>  
  


</div>      

<!-- MENU end -->