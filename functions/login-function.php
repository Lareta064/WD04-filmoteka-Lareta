<?php 

function isAdmin(){

	if ($_SESSION['user']) {

		if ($_SESSION['user'] == 'admin') {
			$result = true;

			} else {

				$result = false;
			}

		}else {
			$result = false;
			}

		return $result;

	}
 ?>