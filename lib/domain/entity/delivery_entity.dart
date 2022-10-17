class DeliveryEntity {
  late int id;
  final int id_customer_order;
  final int id_address;
  final DateTime date_at;

  DeliveryEntity(this.id, this.id_customer_order, this.id_address, this.date_at);
}
