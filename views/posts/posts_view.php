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