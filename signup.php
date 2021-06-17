<?php
include 'body/body_start.php';
require 'functions/init.php';


if (isset($_POST['password']) == isset($POST['confirm_password'])){
    
if (isset($_POST['username']) && isset($_POST['password'])){
        $username = $_POST['username'];
	    $email = $_POST['email'];
        $password = (md5($_POST['password']));
        $membership = 4;
 
        if(user_exists($username) && email_exists($email)=== false){
            
        $query = "INSERT INTO `users` (username, password, email, membership_id) VALUES ('$username', '$password', '$email',$membership)";

           if ($conn->query($query) === TRUE) {
                $last_id = $conn->insert_id;
                header('Location: membership.php');
              $_SESSION['account_id'] = $last_id;
           }else{
               $errors[] = "User Registration Failed.";
               
           }
        } elseif (user_exists($username)== true){
            $errors[] = 'username '.$username .' already exists';
        } elseif (email_exists($email)==true){
            $errors[] = 'email '.$email .' already exists';
        }
    }
} else{
    $errors[] = 'passwords do not match';
}

?>






<div class="body-left">
    <div class="module">
        <h1>Welcome to netflicks</h1>
        <h2>Create an account</h2>
 


        <form class="form" action="" method="post" >
            
            <input type="text" placeholder="User Name" name="username" required />
            <input type="email" placeholder="Email" name="email" required />
            <input type="password" placeholder="Password" name="password" autocomplete="new-password" required />
            <input type="password" placeholder="Confirm Password" name="confirm_password" autocomplete="new-password" required />
            <input type="submit" value="Register" name="register" class="btn btn-block btn-primary" />
            <p>Already a member? <a href="login.php">Click here to login </a></p>
            <p><?php echo output_errors($errors);?></p>
            
        </form>
    </div>
</div>


<?php
include 'body/body_end.php';
?>    