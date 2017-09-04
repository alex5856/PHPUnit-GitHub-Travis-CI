<?
    require_once 'test_class.php';
    $test = new Test('Alex');
    echo $test->hello(). '<br>';

    $value = 'Alex';
    echo $test->resTo($value);
