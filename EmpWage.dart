import 'dart:math';

void main() {
  EmpWage emp = new EmpWage();
  emp.display();
}

class EmpWage {
  // Random random = new Random();
  int fullTime = 1;
  int ratePerHr = 20;
  int salary = 0;
  int empCheck = new Random().nextInt(2);

  void display() {
    if (empCheck == fullTime) {
      print("Employee is present");
      int empHrs = 8;
      salary = empHrs * ratePerHr;
      print("Employee Wage: $salary");
    } else {
      print("Employee is absent");
      int empHrs = 0;
      salary = empHrs * ratePerHr;
      print("Employee Wage: $salary");
    }
  }
}
