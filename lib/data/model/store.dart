import '../../domain/entity/store_entity.dart';

class Store extends StoreEntity {
  late int id;
  final int capacity;
  final int id_address;

  Store(this.id, this.capacity, this.id_address)
      : super(id, capacity, id_address);

  Map<String, dynamic> toMap() => {
        'id': id,
        'capacity': capacity,
        'id_address': id_address,
      };

  factory Store.toFromMap(Map<String, dynamic> json) =>
      Store(json['id'], json['capacity'], json['id_address']);
}
