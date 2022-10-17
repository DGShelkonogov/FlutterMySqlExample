import 'dart:ffi';

class EmployeeEntity {
  late int id;
  final String name;
  final String position;
  final bool is_discharged;
  final double salary;

  EmployeeEntity(this.id, this.name, this.position, this.is_discharged, this.salary);
}
