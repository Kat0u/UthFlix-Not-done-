<?php
require_once("includes/header.php");

    $preview = new PreviewProvider($connection, $userLoggedIn);
    echo $preview->createTvShowPreview();

    $containers = new CategoryContainers($connection, $userLoggedIn);
    echo $containers->showTvShowCategories();
?>