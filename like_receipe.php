<?php
include 'db.php';
function getReceipe($receipe_id=0) {
	global $db;
	$sql = "UPDATE receipe SET rating = ".$rating." where receipe_id = ".$receipe_id;
	$result = $db->query($sql);
			
	return 1;
}




?>