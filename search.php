<?php
 
 require_once("includes/header.php");
 ?>
 <div class="textBox">
    <input type="text" class="search" placeholder="Search for anything..">
 
 </div>

 <div class="results">

<script>

$(function() {

    var username = '<?php echo $userLoggedIn; ?>';
    var timer;

    $(".search").keyup(function(){
        clearTimeout(timer);
        
        timer = setTimeout(function(){
        var val = $(".search").val();
        
    
        if(val!=""){
            $.post("ajax/getSearchResults.php", { term: val, username:username }, function(data){
                $(".results").html(data);

            })
        }  
         else {
            $(".results").html("");
        } 

        }, 500);
    })

})

</script>
 </div>
