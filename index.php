<?php
/* Auto einai olo to index page. Exoume to preview opote dhmiourgw ena instance apo previewProvider pou exw ulopoihsei gia na me voithisei kai
to containers , dhladh to 2o kommati tou index page pou einai to kollaz me oles tis seires kai tainies. Omoiws dhmiourgw ena instance apo categoryContainers kai deixnw oles tis kathgories */
require_once("includes/header.php");

    $preview = new PreviewProvider($connection, $userLoggedIn);
    echo $preview->createPreviewImage(null);

    $containers = new CategoryContainers($connection, $userLoggedIn);
    echo $containers->showAllCategories();
?>