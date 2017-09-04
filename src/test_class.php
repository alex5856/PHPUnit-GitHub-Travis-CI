<?php
class test
{

    protected $name;

    public function __construct($name)
    {
        $this->name = (string)$name;
    }

    public function hello()
    {
        return 'Hello ' . $this->name;
    }

    public function resTo($val)
    {
        $val = strtolower($val);
        $name = strtolower($this->name);
        $return_t = 'No';
        if (strpos($val, $name) === false) {
            $return_t = 'Yes';
        }
        return $return_t;
    }
}