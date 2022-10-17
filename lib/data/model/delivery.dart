import '../../domain/entity/delivery_entity.dart';

class Delivery extends DeliveryEntity {
  late int id;
  final int id_customer_order;
  final int id_address;
  final DateTime date_at;

  Delivery(this.id, this.id_customer_order, this.id_address, this.date_at)
      : super(id, id_customer_order, id_address, date_at);

  Map<String, dynamic> toMap() => {
        'id': id,
        'id_customer_order': id_customer_order,
        'id_address': id_address,
        'date_at': date_at
      };

  factory Delivery.toFromMap(Map<String, dynamic> json) => Delivery(json['id'],
      json['id_customer_order'], json['id_address'], json['date_at']);
}
