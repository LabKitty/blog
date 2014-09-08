<?foreach ($tags as $tag):?><a href="#"><span class="label label-info"><?=$tag['tag_name']?></span></a><?endforeach?>
    <div class="span8">
        <h1><?=$post["post_text"]?></h1>
        <p><?=$post["post_text"]?></p>
        <div>
            <span class="badge badge-success"><?=$post["post_created"]?></span><div class="pull-right"><span class="label">alice</span> <span class="label">story</span> <span class="label">blog</span> <span class="label">personal</span></div>
        </div>

    </div>



