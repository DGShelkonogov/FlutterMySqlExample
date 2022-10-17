import '../../domain/entity/shop_entity.dart';

class Shop extends ShopEntity {
  late int id;
  final int id_address;
  final int id_employee;

  Shop(this.id, this.id_address, this.id_employee)
      : super(id, id_address, id_employee);

  Map<String, dynamic> toMap() => {
        'id': id,
        'id_address': id_address,
        'id_employee': id_employee,
      };

  factory Shop.toFromMap(Map<String, dynamic> json) =>
      Shop(json['id'], json['id_address'], json['id_employee']);
}
