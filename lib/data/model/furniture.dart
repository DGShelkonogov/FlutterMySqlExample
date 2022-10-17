import '../../domain/entity/furniture_entity.dart';

class Furniture extends FurnitureEntity {
  late int id;
  final String title;
  final String description;
  final double price;
  final int id_store;

  Furniture(this.id, this.title, this.description, this.price, this.id_store)
      : super(id, title, description, price, id_store);

  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
        'description': description,
        'price': price,
        'id_store': id_store,
      };

  factory Furniture.toFromMap(Map<String, dynamic> json) => Furniture(
      json['id'],
      json['title'],
      json['description'],
      json['price'],
      json['id_store']);
}
