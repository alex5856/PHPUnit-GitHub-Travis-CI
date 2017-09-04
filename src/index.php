<?
    require_once 'whovian.php';

    $whovian = new Whovian('David Tennant');
    echo $whovian->say();

    $opinion = 'David Tennant is the best doctor, period';
    echo $whovian->respondTo($opinion);