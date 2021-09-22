import 'dart:math';

void main() {
  EmpWage emp = new EmpWage();
  emp.display();
}

class EmpWage {
  // Random random = new Random();
  static const int fullTime = 1;
  static const int partTime = 2;
  static int ratePerHr = 20;
  static int TotalDays = 20;
  int salary = 0;
  int empHrs = 0;
  int totalSalary = 0;
  int day = 0;
  int noOfHrs = 0;

  void display() {
    int empCheck = new Random().nextInt(3);

    while (day < TotalDays && noOfHrs <= 100) {
      switch (empCheck) {
        case fullTime:
          empHrs = 8;
          salary = empHrs * ratePerHr;
          break;

        case partTime:
          empHrs = 4;
          salary = empHrs * ratePerHr;
          break;

        default:
          empHrs = 0;
          salary = empHrs * ratePerHr;
      }

      totalSalary += salary;
      noOfHrs += empHrs;
      day++;
    }
    print("Total Hrs: $noOfHrs");

    print("Total Employee Wage: $totalSalary");
  }
}
