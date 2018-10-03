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
<div class="container section-page">
	
	<div class="title-1 title-1--white">Фильмотека</div>
	<?php 			
		foreach($films as $film) {
	 ?>
	
	<div class="card mb-20">
		<div class="row">
			<div class="col-auto">
				<a href="singl.php?id=<?=$film['id']?>" alt=""><img src="<?=HOST?>data/films/min/<?=$film['photo']?>" alt="poster"  /></a>
			</div>
			<div class="col">
				<div class="card-header">			
					<a href="singl.php?id=<?=$film['id']?>" class="title-link title-4"> <?php echo $film['title'] ?> </a>
					<!--показываем кнопки редактирования и удаления только для админа-->

					<?php  

						if( isAdmin() ) { ?>						

							
								<div class="button-group">
									<a class="button button--edit" title="Редактировать" href="edit.php?id=<?=$film['id']?>"><i class="far fa-edit"></i></a>
									<a href="?action=delete&id=<?=$film['id']?>" class="button button--delete" title="Удалить">
										<i class="far fa-trash-alt"></i>
									</a>
								</div>	
								
					 <?php } ?>

				</div>	
				<div class="badge"> <?php echo $film['genre'] ?> </div>
				<div class="badge"> <?php echo $film['year'] ?> </div>

			</div>
		</div>
		
	</div>
		
	<?php } 
	
		if( isset($_SESSION['user']) ){

			if($_SESSION['user'] == 'admin'){?>
				<div class="mb-100 text-center">
					<a href="new.php" class="button">Добавить новый фильм</a>
				</div>
	 <?php
		}
	}

	?>

	