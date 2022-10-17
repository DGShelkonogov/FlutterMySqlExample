import '../../domain/entity/employee_entity.dart';

class Employee extends EmployeeEntity {
  late int id;
  final String name;
  final String position;
  final bool is_discharged;
  final double salary;

  Employee(this.id, this.name, this.position, this.is_discharged, this.salary)
      : super(id, position, position, is_discharged, salary);

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'position': position,
        'is_discharged': is_discharged,
        'salary': salary,
      };

  factory Employee.toFromMap(Map<String, dynamic> json) => Employee(json['id'],
      json['name'], json['position'], json['is_discharged'], json['salary']);
}
