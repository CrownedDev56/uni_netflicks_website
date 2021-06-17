<?php
include 'body/body_start.php';
include 'functions/init.php';
include 'body/menu.php';
$username = $_SESSION['username'];
$account_id = $_SESSION['account_id'];

 if (user_active($username) === true){
    $active_account = 0;     
} else{
    $active_account = 1;
    
}


 if (isset($_POST['submit'])){
     
     $new_username   = $_POST['username'];
     $new_email      = $_POST['email'];
     $first_name     = $_POST['first_name'];
     $last_name      = $_POST['last_name'];
     $phone_no       = $_POST['phone_no'];
     $membership     = $active_account; 
if (user_exists($username) && email_exists($email)=== false){
     
     $query = "UPDATE `users` SET username = '$new_username', active = '$active_account' ,first_name ='$first_name', last_name = '$last_name', phone_no ='$phone_no'  WHERE ID ='$account_id'";
     
     
     if ($conn->query($query) === TRUE) {
         echo 'Your account has been updated' . ", ". $username;
     }
}
 }
            if (user_active($username) === true){
    $errors[] = 'Welcome '. $username. ' you currently have an active account with us.' ;      
} else{
    $errors[] = 'Welcome '. $username. ' you do not currently have an active account with us.';  
} 
            
            ?>



<div class="body-left">
    <div class="module">
        <h2>Update account</h2>
 


        <form class="form" action="" method="post" >
            
            <input type="text" placeholder="New user Name" name="username" required/>
            <input type="email" placeholder="New email" name="email"  required/>
            <input type="text" placeholder="First name" name="first name"  required>
            <input type="text" placeholder="Last name" name="last_name" required>
            <input type="text" placeholder="Phone number" name="phone_no" required>
            
             <p>Activate/de-activate membership: <input type="checkbox" name="membership"></p>
            <input type="submit" value="Update" name="submit" class="btn btn-block btn-primary" />
             <p><?php echo output_errors($errors);?></p>
           
            
        </form>
    </div>
</div>

<div class="body-left">  
    <div class="module">
        <br>
        <h2>Profiles</h2>
    </div>
</div>
<div class="body-left">  
    <div class="module">
        <br>
        <h2>Select membership</h2>
    </div>
</div>
<?php
include 'body/body_end.php';
?>    