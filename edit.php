<?php 
	require('config.php'); 

	require('database.php'); 

	$link = db_connect();

	require('models/films.php');
	require('functions/login-function.php');
	//$film = get_film($link, $_GET['id']);


	
	// Редактируем фильм
	if ( array_key_exists('update-film', $_POST) ) {
		
		// Обработка ошибок
		if ( $_POST['title'] == '') {
			$errors[] = "<p>Необходимо ввести название фильма!</p>";
		}
		if ( $_POST['genre'] == '') {
			$errors[] = "<p>Необходимо ввести жанр фильма!</p>";
		}
		if ( $_POST['year'] == '') {
			$errors[] = "<p>Необходимо ввести год фильма!</p>";
		}

		// Если ошибок нет - сохраняем фильм, записывая данные в БД

		if ( empty($errors)) {

			/*echo "<pre>";
			print_r($_FILES);
			echo "</pre>";*/

			$result = film_update($link, $_POST['title'], $_POST['genre'], $_POST['year'], $_GET['id'], $_POST['description'], $_POST['photo']);

			if($result) {

				$resultSuccess = "<p class='add-success'>Фильм успешно обновлен!</p>";
			} else {
				$resultError = "<p class='add-not-success'>Упс! Что-то не так! Фильм не обновился</p>";
			}
		}
	}

	$film = get_film($link, $_GET['id']);
	include('views/head.tpl');
	include('views/edit-film.tpl');
	include('views/footer.tpl');
 

 ?>







