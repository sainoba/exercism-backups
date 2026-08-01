class Leap {
  // Put your code here
  bool leapYear(int year) {
    if (year % 100 == 0) {
      return (year % 400) == 0;
    }
    return year % 4 == 0;
  }
}
