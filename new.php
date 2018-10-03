<?php 
	require('config.php'); 

	require('database.php'); 

	$link = db_connect();

	require('models/films.php');
	require('functions/login-function.php');

	if(array_key_exists('add-film', $_POST)){
		//Проверяем поля формы на заполненность
		if($_POST['title'] == ''){

			$errors[] ="<p class='empty-title'>Введите название фильма!</p>";
		
		}

		if($_POST['genre'] == ''){ 

			$errors[] = "<p class='empty-genry'>Укажите жанр фильма!</p>";
		
		}

		if($_POST['year'] == ''){

			$errors[] = "<p class='empty-year'>Укажите год создания фильма!</p>";
		}



		//если все поля заполнены, запускаем ф-цию сохранения фильма
		if ( empty($errors)) {

			$result = film_new($link, $_POST['title'], $_POST['genre'], $_POST['year'], $_POST['description']);

			/*echo "<pre>";
			print_r($_FILES);
			echo "</pre>";
*/
			if($result) {

				$resultSuccess = "<p class='add-success'>Фильм добавлен в фильмотеку!</p>";
			} else {
				$resultError = "<p class='add-not-success'>Упс! Что-то не так! Фильм не добавлен</p>";
			}
		} else {
			echo "<pre>";
			print_r ($errors);
			echo "</pre>";
		}
	}


	include('views/head.tpl');
	include('views/new-film.tpl');
	include('views/footer.tpl');
 

 ?>