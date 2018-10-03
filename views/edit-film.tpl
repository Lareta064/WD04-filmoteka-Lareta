<?php 
	if(@$resultSuccess != "") { ?>
		<div class = "add-success"><?=$resultSuccess?></div>

	<?php } ?>

	<?php 
	if(@$resultDelete != "") { ?>
		<div class = "message-delete"><?=$resultDelete?></div>

	<?php } ?>

	<?php 
	if(@$resultError != "") { ?>
		<div class = "add-not-success"><?=$resultError?></div>

	<?php } ?>
<div class="container">

	<h1 class="title-1 title-1--white ">Фильм <?=$film['title']?></h1>


	  <div class="panel-holder mt-0 mb-20">
		<div class="title-4 mt-0">Редактировать фильм</div>

		<form enctype="multipart/form-data" action="edit.php?id=<?=$film['id']?>" method="POST">

			<?php 
				if ( !empty($errors)) {
					foreach ($errors as $key => $value) {
					echo "<div class='error'>$value</div>";
					}
				}
			?>

			<label class="label-title">Название фильма</label>
			<input 	class="input" type="text" 
					placeholder="Введите название" name="title" 
					value="<?=$film['title']?>" />

			<div class="row">
				<div class="col">
					<label class="label-title">Жанр</label>
					<input 	class="input" type="text" placeholder="введите жанр" name="genre" 
							value="<?=$film['genre']?>" />
				</div>
				<div class="col">
					<label class="label-title">Год</label>
					<input class="input" type="text" placeholder="введите год" name="year" 
					value="<?=$film['year']?>" />
				</div>
			</div>
			<textarea name="description" class="textarea" placeholder="Введите описание фильма"><?=$film['description']?></textarea>
			<div class="mb-20">
				<input type="file" name="photo" >
			</div>
			
			<input type="submit" class="button" value="Обновить информацию" name="update-film">
		</form>
	  </div>
	 	<div class="mb-100 text-center">
			<a href="index.php" class="button">Вернуться на главную</a>
		</div>
	</div><!-- build:jsLibs js/libs.js -->
