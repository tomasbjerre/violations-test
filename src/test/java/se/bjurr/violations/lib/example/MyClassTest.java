package se.bjurr.violations.lib.example;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class MyClassTest {

 @Test
 public void test() {
  assertEquals(3, new MyClass().thisIsTested(1, 2));
 }

}
