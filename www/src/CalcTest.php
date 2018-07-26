<?php
require 'Calc.php';

use PHPUnit\Framework\TestCase;

final class CalcTest extends TestCase
{
    public function testAdd(): void
    {
        $this->assertSame(
            5,
            Calc::add(2, 3)
        );
    }
}