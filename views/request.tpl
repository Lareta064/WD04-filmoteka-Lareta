<div class="panel-holder mt-50 mb-20">	
	<h1>Заполните форму</h1>
	<form action="set-cookie.php" method="POST" >
		<!-- <div id="empty-title" class="notify notify--error mb-20">Название фильма не может быть пустым.</div> -->
		<div class="form-group">
			<label class="label">Имя
				<input class="input" name="user-name" type="text" placeholder="Введите имя" />
			</label>
		</div>
		<div class="form-group">
			<label class="label">Пароль
				<input class="input" name="user-city" type="text" placeholder="Введите пароль"/>
			</label>
		</div>
		<!-- <div class="form-group">
			<label class="label">Ваше имя
				<input class="input" name="user-name" type="text" placeholder="Ваше имя" />
			</label>
		</div> -->
		
		<input class="button user-submit" type="submit"  name="user-submit" value="Отправить"/>
	</form>
	<div class="mb-100 text-center">
		<a href="index.php" class="button">На главную</a>
	</div>
</div>