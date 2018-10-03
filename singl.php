<?php 

	require('config.php'); 
	require('database.php'); 

	$link = db_connect();
	require('models/films.php');
	require('functions/login-function.php');

	//удаляем фильм
	if ( @$_GET['action'] == 'delete') {
		$result = film_delete($link, $_GET['id']);

		if($result) {
			$resultDelete = "<p class='message-delete'>Фильм удален из фильмотеки!</p>";
		} else {
			$resultError = "<p class='add-not-success'>Упс! Что-то не так! Фильм не добавлен</p>";

		}

	}

	$film = get_film($link, $_GET['id'] );

	include('views/head.tpl');
	include('views/film-singl.tpl');
	include('views/footer.tpl');





 ?>
