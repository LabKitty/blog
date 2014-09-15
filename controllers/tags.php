<?php

class tags extends Controller{

    function index(){
        $this->tags = get_all("SELECT tag_name, COUNT(post_id) AS count
        FROM post_tags NATURAL JOIN tag GROUP BY tag_id");
    }

    function index_ajax(){
        echo "\$_POST:<br>";
        var_dump($_POST);
    }

    function index_post(){
        echo "\$_POST:<br>";
        var_dump($_POST);
    }

    function view(){
        $post_id = $this ->params[0];
        $this->post = get_first("SELECT * FROM post NATURAL JOIN user WHERE post_id='$post_id'");
    }
}