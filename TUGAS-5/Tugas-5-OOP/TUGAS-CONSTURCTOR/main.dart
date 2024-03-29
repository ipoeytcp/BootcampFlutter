import 'employee.dart';

void main(List<String> args) {
  var myEmp1 = new Employee.Id(1);
  var myEmp2 = new Employee.name("Syaiful Hadi");
  var myEmp3 = new Employee.department("Junior Software Enginer");
  print(myEmp1.empId);
  print(myEmp2.empName);
  print(myEmp3.empDept);
}
