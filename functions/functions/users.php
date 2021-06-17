<?php



function logged_in(){
    if(isset($_SESSION['user_id'])){
    return true;
  } else {
   return false;
  }
 }



function user_exists($username) {
    
    $conn = mysqli_connect('localhost','root','','17122851');
    $sql = "SELECT * FROM `users` WHERE username = '$username' ";
    $result = mysqli_query($conn,$sql);
    $count = mysqli_num_rows($result);
    if ($count == 1){
        return true;
    }else{
        return false;
    }
}
function email_exists($email) {
    $conn = mysqli_connect('localhost','root','','17122851');
    $sql = "SELECT * FROM `users` WHERE email = '$email' ";
    $result = mysqli_query($conn,$sql);
    $count = mysqli_num_rows($result);
    if ($count == 1){
        return true;
    }else{
        return false;
    }
}

function movie_exists($m_name) {
    $conn = mysqli_connect('localhost','root','','17122851');
    $sql = "SELECT * FROM `films` WHERE name = '$m_name' ";
    $result = mysqli_query($conn,$sql);
    $count = mysqli_num_rows($result);
    if ($count == 1){
        return true;
    }else{
        return false;
    }
}

function series_exists($s_name) {
    $conn = mysqli_connect('localhost','root','','17122851');
    $sql = "SELECT * FROM `tv_shows` WHERE name = '$s_name' ";
    $result = mysqli_query($conn,$sql);
    $count = mysqli_num_rows($result);
    if ($count == 1){
        return true;
    }else{
        return false;
    }
}

function user_active($username) {
    $conn = mysqli_connect('localhost','root','','17122851');
    $sql = "SELECT * FROM users WHERE username = '$username' AND `active` = 1 ";
    $result = mysqli_query($conn,$sql);
    $count = mysqli_num_rows($result);
    if ($count > 0){
        return true;
    } 
}
 

function login ($username, $password){
    $password = md5($password);
    $logged_in = false;
    $conn = mysqli_connect('localhost','root','','17122851');
    
    $sql = "SELECT ID FROM users WHERE username = '$username' and password = '$password'";
    $result = mysqli_query($conn,$sql);
    $count = mysqli_num_rows($result);
    if ($count == 1){
       
        return true;
    }else{
        return false;
    }
}

function output_errors($errors){
    $output = array();
    foreach($errors as $error){
        $output[] = '<li>'. $error. '</li>';
    }
    return '<ul'. implode('', $output) .'</ul>';
}





?>