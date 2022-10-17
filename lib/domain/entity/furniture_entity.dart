import 'dart:ffi';

class FurnitureEntity {
  late int id;
  final String title;
  final String description;
  final double price;
  final int id_store;

  FurnitureEntity(this.id, this.title, this.description, this.price, this.id_store);
}
