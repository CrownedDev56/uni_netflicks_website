<?php
    include 'body/body_start.php';
include 'functions/init.php';

if (isset($_POST['username']) and isset($_POST['password'])){
$username = $_POST['username'];
$password = (md5($_POST['password']));
    
$query = "SELECT * FROM `users` WHERE username='$username' and password='$password'";
 
$result = mysqli_query($conn, $query) or die(mysqli_error($conn));
$count = mysqli_num_rows($result);
$row = mysqli_fetch_assoc($result);
    
if ($count == 1){
    $_SESSION['account_id'] = $row['ID'];    
$_SESSION['username'] = $username;
}else{
 $errors[] = "Invalid Login Credentials.";
}
}
if (isset($_SESSION['username'])){
$username = $_SESSION['username'];
    header('Location: movies.php');
 
}
    


include 'body/body_start.php';

?>




<div class="body-left">
    <div class="module">
        <h1>Welcome to netflicks</h1>
        <h2>Login</h2>
        <form class="form" action="" method="post" >
            
            <input type="text" placeholder="User Name" name="username" required />
            <input type="password" placeholder="Password" name="password" required />
            <input type="submit" value="Login" name="register" class="btn btn-block btn-primary" />
            <p>New to netflicks? <a href="signup.php">Click here to signup. </a></p>
            <p><?php echo output_errors($errors);?></p>
            
        </form>
    </div>
</div>

<?php

include 'body/body_end.php';
?>    