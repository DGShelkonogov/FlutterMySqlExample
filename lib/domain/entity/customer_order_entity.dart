class CustomerOrderEntity {
  late int id;
  final double price;
  final DateTime date_at;
  final int id_customer;
  final int id_shop;
  final int id_employee;

  CustomerOrderEntity(this.id, this.price, this.date_at, this.id_customer, this.id_shop,
      this.id_employee);
}
