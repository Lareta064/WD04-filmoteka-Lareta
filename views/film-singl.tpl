
<div class="container section-page">
	
	<div class="title-1 title-1--white">Информация о фильме</div>
		
	<div class="card mb-20">
		<div class="row">
			<div class="col">
				<img src="<?=HOST?>data/films/<?=$film['photo']?>" alt="">
			</div>
			<div class="col">
				
				<div class="card-header">			
					<h4 class="title-4"> <?=$film['title'] ?> </h4>
					
					<?php  
	
						if( isAdmin() ){?>

								<div class="button-group">
									<a class="button button--edit" title="Редактировать" href="edit.php?id=<?=$film['id']?>"><i class="far fa-edit"></i></a>
									<a href="?action=delete&id=<?=$film['id']?>" class="button button--delete" title="Удалить"><i class="far fa-trash-alt"></i>
									</a>
								</div>	
					 <?php } ?>
						
				</div>	
				<div class="badge"> <?=$film['genre'] ?> </div>
				<div class="badge"> <?=$film['year'] ?> </div>
				<div class="user-content">
					<p><?=$film['description'] ?></p>					
					
				</div>
				
			</div>
		</div>
	
	</div>
		
	

	<div class="mb-100 text-center">
		<a href="index.php" class="button">На главную</a>
	</div>