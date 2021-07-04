<?php
require_once ('db.php');
// Here the user id is harcoded.
// You can integrate your authentication code here to get the logged in user id
$userId = 1;

if (isset($_POST["index"], $_POST["receipe_id"])) {
    
    $receipe_id = $_POST["receipe_id"];
    $rating = $_POST["index"];
    
    $checkIfExistQuery = "select * from rating where receipe_id = '" . $receipe_id . "'";
    if ($result = mysqli_query($conn, $checkIfExistQuery)) {
        $rowcount = mysqli_num_rows($result);
    }
    
   // if ($rowcount == 0) {
        $insertQuery = "INSERT INTO rating(receipe_id, rating) VALUES ('" . $receipe_id . "','" . $rating . "') ";
        $result = mysqli_query($conn, $insertQuery);
        echo "success";
    /*} else {
        echo "Already Voted!";
    }*/
}
