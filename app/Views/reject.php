<?php

  include(config.php);
  $id = $_GET[id];

$query="DELETE FROM `review_table` WHERE `review_table`.`review_id` = $id";
  if(performQuery($query)){
    echo "Account has been rejected";
    }else{
      echo "Unknown error occured Please try again";
    }

?>
<br/><br/>
<a href="review_rating.php">Back</a>
