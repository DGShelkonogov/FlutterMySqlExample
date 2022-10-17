import 'dart:math';

import '../../domain/entity/сustomer_entity.dart';

class Customer extends CustomerEntity {
  late int id;
  final String name;
  final String phone;
  final String email;
  final int id_address;

  Customer(this.id, this.name, this.phone, this.email, this.id_address)
      : super(id, name, phone, email, id_address);

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'phone': phone,
        'email': email,
        'id_address': id_address,
      };

  factory Customer.toFromMap(Map<String, dynamic> json) => Customer(json['id'],
      json['name'], json['phone'], json['email'], json['id_address']);
}
