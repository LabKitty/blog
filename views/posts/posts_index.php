<div class="register-form">
    <?php
    if(isset($msg) & !empty($msg)){
        echo $msg;
    }
    ?>
    <h1>Login</h1>
    <form action="register.php" method="POST">
        <p><label>User Name : </label>
            <input id="username" type="text" name="username" placeholder="username" /></p>

        <p><label>Password&nbsp;&nbsp; : </label>
            <input id="password" type="password" name="password" placeholder="password" /></p>

        <a class="btn" href="register.php">Signup</a>
        <input class="btn register" type="submit" name="submit" value="Login" />
    </form>
</div>
<?php } ?>

   <?foreach( $posts as $post):?>
    <div class="span8">
        <h1><a href="<?= BASE_URL ?>posts/view/<?= $post['post_id'] ?>">
                <?=$post['post_subject']?>
            </a>
        </h1>
        <p><?=$post['post_text']?></p>

        <div>
            <span class="badge badge-success"><?=$post["post_created"]?></span>
            <div class="pull-right">
                <?foreach ($tags[$post['post_id']] as $tag):?>
                    <a href="#"><span class="label" style="background-color: #5bc0de"><?=$tag?></span></a>
                    <?endforeach?>
                <span class="label">alice</span>

            </div>
        </div>

    </div>

>