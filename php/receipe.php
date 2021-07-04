<?php
include 'db.php';
function getReceipe($receipe_id=0) {
	global $db;
	$receipe_qry = $receipe_id > 0 ? ' And receipe_id =  '.$receipe_id : '';
	$sql = "SELECT * FROM receipe where 1=1 ".$receipe_qry." order by receipe_id";
	$result = $db->query($sql);
	$receipes = [];
	while($row = $result->fetch_assoc()) {
		$receipes[] = $row;
	}		
	return array('receipes' => $receipes);
}




?>