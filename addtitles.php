    <?php
        include 'functions/init.php ';
    include 'body/body_start.php';
    include 'body/menu.php';   
    $genre = 4;
    $rating = 6;

    if (isset($_POST['upload_movie'])){
        
        $filename = $_FILES['movie_file']['name'];
        $tmp_filename = $_FILES['movie_file']['tmp_name'];
        $folder = 'uploads/movies/';
        $path = $folder.$filename;
        move_uploaded_file($tmp_filename, $path);
        $m_name = $_POST['m_name'];
        $m_description = $_POST['m_description'];
        
        if(movie_exists($m_name) ===false){
          $query = "INSERT INTO `films` (name, genre_id, rating_id, description, path) VALUES ('$m_name','$genre', '$rating', '$m_description','$path')";
               if ($conn->query($query) === TRUE) {
                  echo 'uploaded successfully';
               }
        } else{
            echo 'Series title '.$m_name ." already exists ";
            
        }
    } 
        
    
  if (isset($_POST['upload_series'])){
        $filename = $_FILES['series_file']['name'];
        $tmp_filename = $_FILES['series_file']['tmp_name'];
        $folder = 'uploads/series/';
        $path = $folder.$filename;
        move_uploaded_file($tmp_filename, $path);
        $s_name = $_POST['s_name'];
        $s_description = $_POST['s_description'];
        $season_num = $_POST['season_num'];
      
      if(series_exists($s_name) ===false){
          $query = "INSERT INTO `tv_shows` (name, genre_id, seasons, rating_id, description, path) VALUES ('$s_name','$genre',$season_num, '$rating', '$s_description','$path')";
               if ($conn->query($query) === TRUE) {
                  echo 'uploaded successfully';
               }
    } else{
          echo 'Series title '.$s_name ." already exists ";
      }
  }
    

    ?>

    <div class="body-left">
     
        <div class="module">
               <h1>Upload movie title</h1>
            <form method = "post" enctype="multipart/form-data">
                <input type="text" placeholder="Movie name" name="m_name" required/>
                <input type="text" placeholder="Movie description" name="m_description"  required>
                <input type="file" name = "movie_file" value = "upload">
                <input type="submit" value="Upload" name="upload_movie" class="btn btn-block btn-primary" />
                <p>The genre and rating of this film will be decided by the company.</p>
            </form>
        </div>
        
        
        <div class="module">
            <h1>Upload series title</h1>
            <form method = "post" enctype="multipart/form-data">
                <input type="text" placeholder="Series name" name="s_name" required/>
                <input type="text" placeholder="Number of sesasons" name="season_num"  required>
                <input type="text" placeholder="Series description" name="s_description"  required>
                <input type="file" name = "series_file" value = "upload">
                <input type="submit" value="Upload" name="upload_series" class="btn btn-block btn-primary" />
                <p>The genre and rating of this film will be decided by the company.</p>
            </form>
        </div>
    </div>

    <?php
    include 'body/body_end.php';
    ?>    