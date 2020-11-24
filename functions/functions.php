<?php

$con = mysqli_connect("localhost","root","","social_network");

//function for inserting post

function insertPost(){
    if(isset($_POST['sub'])){
        global $con;
        global $user_id;

        $content = htmlentities($_POST['content']);
        $upload_image = $_FILES['upload_image']['name'];
        $image_tmp = $_FILES['upload_image']['tmp_name'];
        $random_number = rand(1,100);

        if(strlen($content) > 250){
            echo "<script>alert('Please don't use more than 250 words')</script>";
            echo "<script>window.open('home.php','_self')</script>";
        }else{
            if(strlen($upload_image) >= 1 and strlen($content) >= 1){
                move_upload_file($img_temp,"imagepost/$upload_image.$random_number");
                $insert = "insert into posts";
            }
        }
    }
}

?>