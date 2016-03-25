package se.bjurr.violations.lib.example;

public class MyClass {
 public static String CONstant = "yes";

 void npe(String a, String b) {
  if (a == null) {
   System.out.println();
  } else {

  }
  a.length();
 }

 public int thisIsTested(int a, int b) {
  if (a == 1 && b == 2) {
   return 3;
  }
  return 0;
 }

 void npe2(String a, String b) {
  if (a == null) {
   System.out.println();
  } else {

  }
  a.length();
 }

 @Override
 public boolean equals(Object obj) {
  return true;
 }
}
