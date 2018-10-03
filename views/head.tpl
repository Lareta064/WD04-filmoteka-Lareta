<!DOCTYPE html>
<html lang="ru">

<head>
	<meta charset="UTF-8" />
	<title>Фильмотека</title>	
	<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"/><![endif]-->
	<meta name="keywords" content="" />
	<meta name="description" content="" /><!-- build:cssVendor css/vendor.css -->
	<link rel="stylesheet" href="libs/normalize-css/normalize.css" />
	<link rel="stylesheet" href="libs/bootstrap-4-grid/grid.min.css" />
	<link rel="stylesheet" href="libs/jquery-custom-scrollbar/jquery.custom-scrollbar.css" /><!-- endbuild -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	<!-- build:cssCustom css/main.css -->
	<link rel="stylesheet" href="./css/main.css" /><!-- endbuild -->
	<link rel="stylesheet" href="./css/mystyle.css" />
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800&amp;subset=cyrillic-ext" rel="stylesheet">
	<!--[if lt IE 9]><script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script><![endif]-->
</head>

<body class="index-page">

	<div class="container user-content pt-35">
		<a href="login.php" class="enter">LogIn</a>
		
	<?php 

		if( isAdmin() ) { ?>
			<a href="logout.php" class="logout">LogOut</a>

	<?php 
		if (isset($_COOKIE['user-name']) ){?>
			<div class="greeting">

				<?php if (isset($_COOKIE['user-name']) ){?>		
					Здравствуйте, <?=$_COOKIE['user-name']?> из <?=$_COOKIE['user-city']?>!
				<?php } else{?>
					Здравствуйте, <?=$_COOKIE['user-name']?>!
				<?php } ?>
			</div>
	<?php } 

}  ?>


	 