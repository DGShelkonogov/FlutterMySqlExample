import '../../domain/entity/customer_order_entity.dart';

class CustomerOrder extends CustomerOrderEntity {
  late int id;
  final double price;
  final DateTime date_at;
  final int id_customer;
  final int id_shop;
  final int id_employee;

  CustomerOrder(this.id, this.price, this.date_at, this.id_customer,
      this.id_shop, this.id_employee)
      : super(id, price, date_at, id_customer, id_shop, id_employee);

  Map<String, dynamic> toMap() => {
        'id': id,
        'price': price,
        'date_at': date_at,
        'id_customer': id_customer,
        'id_shop': id_shop,
        'id_employee': id_employee,
      };

  factory CustomerOrder.toFromMap(Map<String, dynamic> json) => CustomerOrder(
      json['id'],
      json['price'],
      json['date_at'],
      json['id_customer'],
      json['id_shop'],
      json['id_employee']);
}
