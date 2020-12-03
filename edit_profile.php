<!DOCTYPE html>
<?php
session_start();
include("includes/header.php");
if(!isset($_SESSION['user_email'])){
  header("location: index.php");
}
?>
<html>
  <head>
    
    <title>Edit Account Settings</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="style/home_style2.css">
  </head>
  <body>
      <div class="row">
            <div class="col-sm-2">
            </div>
            <div class="col-sm-8">
                <form action="" method="post" enctype="multipart/form-data">
                    <table class="table table-bordered table-hover">
                        <tr align="center">
                            <td colspan="6" class="active"><h2>Edit Your Profile</h2></td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; ">Change Your Firstname</td>
                            <td>
                                <input class="form-control" type="text" name="f_name" required value="<?php echo $first_name; ?>">
                            </td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; ">Change Your Lastname</td>
                            <td>
                                <input class="form-control" type="text" name="l_name" required value="<?php echo $last_name; ?>">
                            </td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; ">Change Your Username</td>
                            <td>
                                <input class="form-control" type="text" name="u_name" required value="<?php echo $user_name; ?>">
                            </td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; ">Description</td>
                            <td>
                                <input class="form-control" type="text" name="describe_user" required value="<?php echo $describe_user; ?>">
                            </td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; ">Relationship Status</td>
                            <td>
                               <select class="form-control" name="Relationship" >
                               <option ><?php echo $Relationship_status;?></option>
                               <option>Engaged</option>
                               <option>Married</option>
                               <option>Single</option>
                               <option>In a Relationship</option>
                               <option>It's Complicated</option>
                               <option>Separated</option>
                               <option>Divorced</option>
                               <option>Widowed</option>
                               </select>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; ">Password</td>
                            <td>
                                <input id="mypass" class="form-control" type="password" name="u_pass" required value="<?php echo $user_pass; ?>">
                                <input type="checkbox" onclick="show_password()"><strong>Show Password</strong>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; ">Email</td>
                            <td>
                                <input class="form-control" type="email" name="u_email" required value="<?php echo $user_email; ?>">
                            </td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; ">Country</td>
                            <td>
                               <select class="form-control" name="u_country" >
                               <option ><?php echo $user_country;?></option>
                               <option>United States</option>
                               <option>India</option>
                               <option>UAE</option>
                               <option>Pakistan</option>
                               <option>China</option>
                               <option>UK</option>
                               <option>other</option>
                               
                               </select>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; ">Gender</td>
                            <td>
                               <select class="form-control" name="u_gender" >
                               <option ><?php echo $user_gender;?></option>
                               <option>Male</option>
                               <option>Female</option>
                               <option>other</option>
                               
                               </select>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-weight: bold; ">Birthdate</td>
                            <td>
                                <input class="form-control input-md" type="date" name="u_birthday" required value="<?php echo $user_birthday; ?>">
                            </td>
                        </tr>
                        <!-- Password Recovery option-->
                        <tr>
                        <td style="font-weight: bold; ">Forgotten Password</td >
                        <td>
                            <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">Turn On</button>

                            <div id="myModal" class="modal fade" role="dialog">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Modal Header</h4>
                                        </div>
                                        <div class="modal-body">
                                            <form action="recovery.php?id=<?php echo $user_id; ?>" method="post" id="f">
                                            <strong>What is your School Best Friends Name?</strong>
                                            <textarea class="form-control" cols="83" rows="4" name="content" placeholder="Someone"></textarea><br>
                                            <input class="btn btn-default" type="submit" name="sub" value="Sumbit" style="width:100px;"><br><br>
                                            <pre>Answer the above question we will ask this question if you forgot your <br>password.</pre>
                                            <br><br>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                        </tr>

                        <tr align="center">
                            <td colspan="6">
                            
                            <input type="submit"  class="btn btn-info" name="update" style="width:250px;" value="Update"> 
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="col-sm-2">
            </div>
      </div>
  </body>
  </html>