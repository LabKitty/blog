<div class="span8">
    <h1><?=$post['post_subject']?></h1>
    <p>
        <?=$post['post_text']?>
    </p>
    <div>
        <span class="badge badge-success">Posted <?=$post['post_created']?></span>
        <div class="pull-right">
            <span class="label"><?=$post['user_id']?></span>
                <span class="label">
                    <?foreach ($tags as $tag):?>
                        <a href="#"><span class="label label-info">
                        <?=$tag['tag_name']?></span></a>
                    <?endforeach?>
                </span>
            <span class="label">blog</span>
            <span class="label">personal</span>

        </div>
    </div>
</div>

<? foreach ($comments as $comment): ?>
    <div class="commentBox">
        <ul class="commentList">
            <li>
                <div class="commenterImage">
                    <img src="http://lorempixel.com/50/50/people/6" />
                </div>
                <div class="commentText">
                    <?=$comment['comment_created']?>
                    <?=$comment['comment_author']?>
                    <p><?=$comment['comment_text']?></p>
                </div>
            </li>
        </ul>
        <form class="form-inline" method="post" role="form">
            <div class="form-group">
                <input class="form-control" type="text" placeholder="Your comments" name="data[comment_text]"/>
            </div>
            <div class="form-group">
                <button class="btn btn-default" type="submit">Add</button>
            </div>
        </form>
    </div>

<? endforeach ?>

<?php  //Start the Session
session_start();
require('connect.php');
//3. If the form is submitted or not.
//3.1 If the form is submitted
if (isset($_POST['username']) and isset($_POST['password'])){
//3.1.1 Assigning posted values to variables.
    $username = $_POST['username'];
    $password = $_POST['password'];
//3.1.2 Checking the values are existing in the database or not
    $query = "SELECT * FROM `user` WHERE username='$username' and password='$password'";

    $result = mysql_query($query) or die(mysql_error());
    $count = mysql_num_rows($result);
//3.1.2 If the posted values are equal to the database values, then session will be created for the user.
    if ($count == 1){
        $_SESSION['username'] = $username;
    }else{
//3.1.3 If the login credentials doesn't match, he will be shown with an error message.
        echo "Invalid Login Credentials.";
    }
}
//3.1.4 if the user is logged in Greets the user with message
if (isset($_SESSION['username'])){
    $username = $_SESSION['username'];
    echo "Hai " . $username . "
";
    echo "This is the Members Area
";
    echo "<a href='logout.php'>Logout</a>";

}else{
//3.2 When the user visits the page first time, simple login form will be displayed.
    ?>