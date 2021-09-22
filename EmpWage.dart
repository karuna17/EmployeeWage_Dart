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
  static int TotalDays = 30;
  int salary = 0;
  int empHrs = 0;
  int totalSalary = 0;

  int empCheck = new Random().nextInt(3);

  void display() {
    for (int count = 1; count <= TotalDays; count++) {
      switch (empCheck) {
        case fullTime:
          int empHrs = 8;
          salary = empHrs * ratePerHr;
          break;

        case partTime:
          int empHrs = 4;
          salary = empHrs * ratePerHr;
          break;

        default:
          int empHrs = 0;
          salary = empHrs * ratePerHr;
      }

      totalSalary += salary;
    }
    print("Total Employee Wage: $totalSalary");
  }
}
