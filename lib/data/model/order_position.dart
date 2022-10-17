import '../../domain/entity/order_position_entity.dart';

class OrderPosition extends OrderPositionEntity {
  late int id;
  final int id_furniture;
  final int id_customer_order;
  final DateTime date_at;

  OrderPosition(
      this.id, this.id_furniture, this.id_customer_order, this.date_at)
      : super(id, id_furniture, id_customer_order, date_at);

  Map<String, dynamic> toMap() => {
        'id': id,
        'id_furniture': id_furniture,
        'id_customer_order': id_customer_order,
        'date_at': date_at,
      };

  factory OrderPosition.toFromMap(Map<String, dynamic> json) => OrderPosition(
      json['id'],
      json['id_furniture'],
      json['id_customer_order'],
      json['date_at']);
}
