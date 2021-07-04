<?php
require_once "db.php";
require_once "functions.php";
// Here the user id is harcoded.
// You can integrate your authentication code here to get the logged in user id
$userId = 1;

$query = "SELECT * FROM receipe ORDER BY receipe_id DESC";
$result = mysqli_query($conn, $query);
$outputString = '';

foreach ($result as $row) {
    $userRating = userRating($row['receipe_id'], $conn);
    $totalRating = totalRating($row['receipe_id'], $conn);
    $outputString .= '
        <div class="row-item">
 <div class="row-title">' . $row['receipe_name'] . '</div> <div class="response" id="response-' . $row['receipe_id'] . '"></div>
 <ul class="list-inline"  onMouseLeave="mouseOutRating(' . $row['receipe_id'] . ',' . $userRating . ');"> ';
    
    for ($count = 1; $count <= 5; $count ++) {
        $starRatingId = $row['receipe_id'] . '_' . $count;
        
        if ($count <= $userRating) {
            
            $outputString .= '<li value="' . $count . '" id="' . $starRatingId . '" class="star" onclick="addRating(' . $row['receipe_id'] . ',' . $count . ');" >&#9733;</li>';
        } else {
            $outputString .= '<li value="' . $count . '"  id="' . $starRatingId . '" class="star" onclick="addRating(' . $row['receipe_id'] . ',' . $count . ');" onMouseOver="mouseOverRating(' . $row['receipe_id'] . ',' . $count . ');">&#9733;</li>';
        }
    } // endFor
    
    $outputString .= '
 </ul>
 
 <p class="review-note">Total Reviews: ' . $totalRating . '</p>
</div>
 ';
}
echo $outputString;
?>