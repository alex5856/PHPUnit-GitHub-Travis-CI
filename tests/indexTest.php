<?php
require dirname(__DIR__) . '/src/test_class.php';
class testTest extends PHPUnit_Framework_TestCase
{
    public function testSetsConstructor()
    {
        $t = new Test('Alex');
        $this->assertAttributeEquals('Alex', 'name', $t);
    }

    public function testHelloName()
    {
        $t = new Test('Alex');
        $this->assertEquals('Hello Alex', $t->hello());
    }

    public function testResTo()
    {
        $t = new Test('Alex');
        $val = 'Alex';
        $this->assertEquals('No', $t->resTo($val));
    }

}