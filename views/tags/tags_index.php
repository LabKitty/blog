<?foreach( $posts as $post ):?>
<?php
/**
 * Created by PhpStorm.
 * User: Spoink
 * Date: 5.09.14
 * Time: 13:41
 */

<div class="list-group">
  <h1><a href="<?= BASE_URL ?>posts/view/<?= $post['post_id'] ?>"><?=$post['post_subject']?></a></h1>
Cras justo odio
</a>
  <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
  <a href="#" class="list-group-item">Morbi leo risus</a>
  <a href="#" class="list-group-item">Porta ac consectetur ac</a>
  <a href="#" class="list-group-item">Vestibulum at eros</a>
</div>

    <?endforeach?>