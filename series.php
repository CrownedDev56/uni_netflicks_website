<?php
include 'body/body_start.php';
    include 'functions/init.php ';

    
   $qry = "SELECT * FROM tv_shows";
   $result = mysqli_query($conn,$qry) or die("Bad Insert: $qry");

include 'body/body_start.php';
include 'body/menu.php';      
$username = $_SESSION['username'];
$account_id = $_SESSION['account_id'];
 
?>


<div class="body-left">
    <div class="module">
        <h1>SERIES</h1>
        
        <table>
            <?php
            $i= 0;
            while($row = mysqli_fetch_assoc($result)){
                if ($i%3 == 0){
                    echo "<tr>";
                }
               
                echo"<td id ='gallary'> <img src = {$row['path']} alt = {$row['name']} method = 'POST' name = 'page_img' class= 'gallary'>
                Name: {$row['name']} <br>
                Seasons: {$row['seasons']} <br>
                Genre:{$row['genre_id']}<br>
                Rating:   {$row['rating_id']}<br>
                {$row['description']}</td>";
                if($i%2 == 1){
                    
                    echo"</tr>";
                $_SESSION['img_id'] = $row['ID'];
                
 
                }
                $i++; 
                # https://www.youtube.com/watch?v=lTyks6s6b6E n
                
                
            }
           #
            ?>
        
        </table>
        
        
    </div>
</div>

<div class="body-left">  
    <div class="module"> 
        
        
    </div>
</div>






<?php
include 'body/body_end.php';
?>