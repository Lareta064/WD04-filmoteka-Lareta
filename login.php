<?php 

	require('config.php');
	require('functions/login-function.php');

if (isset($_POST['btn-enter']) ){

	$userName = $_POST['login'];
	$userCity = $_POST['user-city'];
	$expire = time() + 60*60*24*31;

	setcookie('user-name',$userName, $expire);
	setcookie('user-city',$userCity, $expire);

	

	$userName = 'admin';
	$userPassword = '12345';

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