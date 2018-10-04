<?php 

	require('config.php');
	require('database.php'); 
	require('functions/login-function.php');

if (isset($_POST['btn-enter']) ){

	//записываем данные в cookie
	$userName = $_POST['login'];
	$userCity = $_POST['user-city'];
	$expire = time() + 60*60*24*31;

	setcookie('user-name',$userName, $expire);
	setcookie('user-city',$userCity, $expire);




	/*$userName = 'admin';
	$userPassword = '12345';*/

	//получаем данные админа из БД
	$link = mysqli_connect(MYSQL_SERVER, MYSQL_USER, MYSQL_PASSWORD, MYSQL_DB);
	$query = "SELECT * FROM `admin`";
	
	if($result = mysqli_query($link, $query)){
		$row = mysqli_fetch_array($result);
		/*echo "<pre>";
		print_r($row);
		echo "</pre>";*/
	}
	
	$userName = mysqli_real_escape_string($link, $row['name']);
	$userPassword = mysqli_real_escape_string($link,$row['password']);
	

	if ($_POST['login'] == $userName){

		if ($_POST['password'] == $userPassword){

			$_SESSION['user'] = 'admin';
			

			header('Location:' . HOST . 'index.php' );
		}

	}
}

	include('views/head.tpl');
	include('views/login.tpl');
	include('views/footer.tpl');
?>