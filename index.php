<?php

// Project constants
define('PROJECT_NAME', 'blog');
define('DEFAULT_CONTROLLER', 'posts');
define('DEBUG', false);

// Load app
require 'system/classes/Application.php';
$app = new Application;
$this->posts = get_all("SELECT * FROM post");
$post_id = $this->params[0];
$this->post = get_first("SELECT * FROM post NATURAL JOIN user WHERE post_id="$post_id"");