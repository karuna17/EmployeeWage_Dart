import 'dart:math';

void main() {
  EmpWage emp = new EmpWage();
  emp.display();
}

class EmpWage {
  // Random random = new Random();
  static const int fullTime = 1;
  static const int partTime = 2;
  int ratePerHr = 20;
  int salary = 0;
  int empHrs = 0;

  int empCheck = new Random().nextInt(3);

  void display() {
    switch (empCheck) {
      case fullTime:
        print("Employee is FullTime");
        int empHrs = 8;
        salary = empHrs * ratePerHr;
        print("Employee Wage: $salary");
        break;

      case partTime:
        print("Employee is PartTime");
        int empHrs = 4;
        salary = empHrs * ratePerHr;
        print("Employee Wage: $salary");
        break;

      default:
        print("Employee is absent");
        int empHrs = 0;
        salary = empHrs * ratePerHr;
        print("Employee Wage: $salary");
    }
  }
}
