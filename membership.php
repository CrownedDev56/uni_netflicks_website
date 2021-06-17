<?php
include 'functions/init.php';


include 'body/body_start.php';

   $account_id = $_SESSION['account_id'];    
    $username = $_SESSION['username'];
    if (isset($_POST['submit'])){
         if(isset($_POST['membership']) && isset($_POST['primary_user'])){
             $membership = $_POST['membership'];            
             $primary_user = $_POST['primary_user']; 
             $primary_active = 1;
             
              $query = "UPDATE `users` SET membership_id = '$membership' WHERE ID ='$account_id'";
             $result = mysqli_query($conn, $query);             
             if ($conn->query($query) === TRUE) {
           }
        $query2 = "INSERT INTO `user_profile` (name, primary_user, account_id) VALUES ('$primary_user', '$primary_active',  '$account_id')";
        $result2 = mysqli_query($conn, $query2);
        if ($conn->query($query) === TRUE) {
           $last_id = $conn->insert_id;
                header('Location: home.php');
              $_SESSION['profile_id'] = $last_id;
           }
         }
    }
        
         
    



 
            
       
        
  
?>
<div class="body-left">
    <div class="module">
        <h1>Select Membership </h1>
        <form action="" method="post">
            <table>
            <tr>
                <td>
<div class="card">
  <h1>Basic</h1>
  
   
    <h5>Cost: £6.00</h5>  
    <h5>Number of users: 1</h5>  
<input type="radio" name="membership" value=1>
  </div>
</td>
         <td>
<div class="card">
  <h1>Standard</h1>
  
   
    <h5>Cost: £8.00</h5>  
    <h5>Number of users: 2</h5>  
<input type="radio" name="membership" value=2>
  </div>
</td>  
            <td>
<div class="card">
  <h1>Premium</h1>
  
   
    <h5>Cost: £10.00</h5>  
    <h5>Number of users: 4</h5>  
<input type="radio" name="membership" value=3>
  </div>
                </td>
            </tr>
            </table>
            <input type="text" placeholder = "Primary account name"name= "primary_user" >
            <input type="submit" name="submit" value="Complete" class="btn btn-block btn-primary" />
        </form>
</div>

<?php
    

    
include 'body/body_end.php';
?>