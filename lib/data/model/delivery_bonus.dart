import '../../domain/entity/delivery_bonus_entity.dart';

class DeliveryBonus extends DeliveryBonusEntity {
  late int id;
  final int id_employee;
  final int id_customer_order;
  final int bonus_size;

  DeliveryBonus(
      this.id, this.id_employee, this.id_customer_order, this.bonus_size)
      : super(id, id_employee, id_customer_order, bonus_size);

  Map<String, dynamic> toMap() => {
        'id': id,
        'id_employee': id_employee,
        'id_customer_order': id_customer_order,
        'bonus_size': bonus_size
      };

  factory DeliveryBonus.toFromMap(Map<String, dynamic> json) => DeliveryBonus(
      json['id'], json['id_employee'], json['id_customer_order'], json['bonus_size']);
}
