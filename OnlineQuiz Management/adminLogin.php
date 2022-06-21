<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
  </head>
  <body>
    <div class="header"><h2>Admin Portal</h2></div>
     <div class="container">
       <div class="title"><span>Login Form</span></div>
        
        <form  method="post" action="adminPortal.php?adminLogin.php" enctype="multipart/form-data">
            <div class="user-details">
              <br>
                  <br>
                <div class="input-box"> 
                <span class="details">Email</span>
                <input type="text" placeholder="Enter Email Id"  name="email" required></div>
              <div class="input-box">
                <span class="details">Password</span>
                <input type="password" placeholder="Enter Password" name="password" required>
               
              </div>
         
          
          <div class= "button">
            <input type="submit" name="submit" value="Login">
          </div>
          
        </form>
      </div>
    

  </body>
</html>
