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
	<div class="panel-holder mt-50 mb-20">
		<h1 class="title-1"> Добавить новый фильм</h1>
	
		<form action="new.php" method="POST" id="add-film" enctype="multipart/form-data">
			<!-- <div id="empty-title" class="notify notify--error mb-20">Название фильма не может быть пустым.</div> -->
			<div class="form-group"><label class="label">Название фильма<input class="input film-title" name="title" type="text" placeholder="Название фильма" /></label></div>
			<div class="row">
				<div class="col">
					<div class="form-group"><label class="label">Жанр<input class="input" name="genre" type="text" placeholder="жанр" /></label></div>
				</div>
				<div class="col">
					<div class="form-group"><label class="label">Год<input class="input" name="year" type="text" placeholder="год выпуска" /></label></div>
				</div>		
			</div>
			<textarea name="description" class="textarea" placeholder="Введите описание фильма"></textarea>
			<div class="mb-20">
				<input type="file" name="photo">
			</div>
			<input class="button" type="submit" name="add-film" value="Добавить" />
		</form>
	</div>
	<div class="mb-100 text-center">
		<a href="index.php" class="button">Вернуться на главную</a>
	</div>
</div>