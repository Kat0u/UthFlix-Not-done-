<?php
/* To register.php exei na kanei opws leei kai to onoma me to register page mas*/
require_once("includes/classes/FormSanitizer.php");
require_once("includes/classes/Strings.php");
require_once("includes/classes/Account.php");
require_once("includes/config.php");

   $account = new Account($connection); /* instance of Account class */


    
   if(isset($_POST["submitButton"])) { /* An egine epityxhs upovolh ( oxi eggrafh ) sto register form..*/

    /* Elegxos gia to input tou xrhsth me th voitheia ths FormSanitizer class */
    $firstName = FormSanitizer::sanitizeFormString($_POST["firstName"]);
    $lastName = FormSanitizer::sanitizeFormString($_POST["lastName"]);
    $username = FormSanitizer::sanitizeFormString($_POST["username"]);
    $email = FormSanitizer::sanitizeFormString($_POST["email"]);
    $email2 = FormSanitizer::sanitizeFormString($_POST["email2"]);
    $password = FormSanitizer::sanitizeFormString($_POST["password"]);
    $password2 = FormSanitizer::sanitizeFormString($_POST["password2"]);

    /* Elegxos gia to epityxes register tou xrhsth sto db */
    $success = $account->register($firstName,$lastName,$username,$email,$email2,$password,$password2);
    
    if($success){
        $_SESSION["userLoggedIn"] = $username;
        header("Location: index.php"); // Apothikeuoume to session tou xrhsth mexri na kleisei to browser 
    }
 }

 function getInputData($name){ /* Dhmiourgia synarthshs gia na thumomaste to teleutaio input tou xrhsth (oxi auto complete) */
    if(isset($_POST[$name])) {
        echo $_POST[$name];
    }
}

?>


<!DOCTYPE html>    <!-- Olo auto einai to HTML page mas me titlous headers forms klp klp + Error print gia tyxon mh egkyra stoixeia-->

<html>
<head> <title>uthFlix</title>
<link rel="stylesheet" type="text/css" href="assets/style/style.css" />
</head>
<body>
    

    <div class="signInContainer">
    <div class="column">
        <div class="header">
            <img src="assets/images/uthflix.png" title="Logo" alt="Site Logo" />
            <h3>Sign Up</h3>
           
        </div>
        <form method="POST"> <!-- Xrisimopoihsame POST method afou exoume euaisthita dedomena (kwdikos). Edw sthn ousia exw ylopoihsei olo to form mazi me possible erros. Me th voitheia ths klashs Strings kai ths metavlths account mporw kai exw prosvash stis synarthseis kai sta strings pou xreiazomai. Kalw thn getError, an uparxei thema me to firstname tote h getError synarthsh tha to kanei print-->
            <?php echo $account->getError(Strings::$firstNameCharacters); ?> 
            <input type="text" name="firstName" placeholder="First Name"  value="<?php getInputData("firstName"); ?>" required> <!--To prwto onoma einai upoxrewtiko -->
            <?php echo $account->getError(Strings::$lastNameCharacters); ?> <!-- Error an to onoma einai sta oria-->
            <input type="text" name="lastName" placeholder="Last Name"  value="<?php getInputData("lastName"); ?>" required>
            <?php echo $account->getError(Strings::$usernameCharacters); ?> <!-- Error an to onoma einai sta oria-->
            <?php echo $account->getError(Strings::$usernameInUse); ?> <!-- Error an to onoma einai in use -->
            <input type="text" name="username" placeholder="Username" value="<?php getInputData("username"); ?>" required>
            <?php echo $account->getError(Strings::$emailsNotMatching); ?><!-- Error an ta email den einai idia -->
            <?php echo $account->getError(Strings::$emailInUse); ?><!-- Error an to email einai hdh in use-->
            <?php echo $account->getError(Strings::$emailInvalid); ?><!-- Error an to email einai invalid-->
            <input type="email" name="email" placeholder="Email" value="<?php getInputData("email"); ?> "required>
            <input type="email" name="email2" placeholder="Confirm Email" value="<?php getInputData("email2"); ?> "required>
            <?php echo $account->getError(Strings::$passwordsNotMatching); ?><!-- Error an ta password den einai idia-->
            <?php echo $account->getError(Strings::$passwordsLength); ?><!-- Error an to password einai ektos oriwn-->
            <input type="password" name="password" placeholder="Password" required>
            <input type="password" name="password2" placeholder="Confirm Password" required>
            <input type="submit" name="submitButton" value="SUBMIT"><!--Koumpi submit-->

        </form>

        <a href="login.php" class="signInMessage">Already have an account? Sign in here!</a>
    </div>
    </div>
</body>
</html>