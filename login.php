<?php
/* To login.php einai idio me to register page sthn ousia apla allazoun kapoia html prints. Episis allaazei to href (an den exeis account..).*/
require_once("includes/classes/FormSanitizer.php");
require_once("includes/classes/Strings.php");
require_once("includes/classes/Account.php");
require_once("includes/config.php");

$account = new Account($connection); /* instance of Account class */

 if(isset($_POST["submitButton"])) { /* Tsekaroume mono to username kai to pass gt mono auta ta 2 exei to login */

    $username = FormSanitizer::sanitizeFormString($_POST["username"]);
    $password = FormSanitizer::sanitizeFormString($_POST["password"]);
    $success = $account->login($username, $password);
    
    if($success){
        $_SESSION["userLoggedIn"] = $username;
        header("Location: index.php"); // Store the session
    }
 }

 function getInputData($name){ /* Remembering last data */
     if(isset($_POST[$name])) {
         echo $_POST[$name];
     }
 }
?>


<!DOCTYPE html>

<html>
<head> <title>uthFlix</title>
<link rel="stylesheet" type="text/css" href="assets/style/style.css" />
</head>
<body>
    

    <div class="signInContainer">
    <div class="column">
        <div class="header">
            <img src="assets/images/uthflix.png" title="Logo" alt="Site Logo" />
            <h3>Sign In</h3>
           
        </div>
        <form method="POST">
            <?php echo $account->getError(Strings::$loginFailed); ?>
            <input type="text" name="username" placeholder="Username" value="<?php getInputData("username"); ?>" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" name="submitButton" value="SUBMIT">
        </form>

        <a href="register.php" class="signInMessage">Not a member? Create an account here!</a>
    </div>
    </div>
</body>
</html>