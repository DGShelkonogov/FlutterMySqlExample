class DeliveryBonusEntity{
  late int id;
  final int id_employee;
  final int id_customer_order;
  final int bonus_size;

  DeliveryBonusEntity(this.id, this.id_employee, this.id_customer_order, this.bonus_size);
}