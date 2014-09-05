<?php
/**
 * Created by PhpStorm.
 * User: Spoink
 * Date: 5.09.14
 * Time: 13:38
 */

class tags {
    function index() {
        $this->tags = get_all("SELECT tag_name, COUNT(post_id) AS count FROM post_tags NATURAL JOIN tag GROUP BY tag_id");
    }
} 