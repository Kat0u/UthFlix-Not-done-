<?php
    require_once("includes/header.php");

    if(!isset($_GET["id"])){
        exit("No ID passed into page!");
    }
    $entityId = $_GET["id"];
    $entity = new Entity($connection, $entityId);
    /* Provolh previewImage otan kanw click panw se ena entity */
    $preview = new PreviewProvider($connection, $userLoggedIn);
    echo $preview->createPreviewImage($entity);
     /* Emfanish season kai episodiwn se mia seira */
    $seasonProvider = new Provider($connection, $userLoggedIn);
    echo $seasonProvider->create($entity);
?>