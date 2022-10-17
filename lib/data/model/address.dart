import '../../domain/entity/address_entity.dart';

class Address extends AddressEntity {
  late int id;
  final String country;
  final String city;
  final String street;
  final String building;

  Address(this.id, this.country, this.city, this.street, this.building)
      : super(id, country, city, street, building);

  Map<String, dynamic> toMap() => {
        'id': id,
        'country': country,
        'city': city,
        'street': street,
        'building': building,
      };

  factory Address.toFromMap(Map<String, dynamic> json) => Address(json['id'],
      json['country'], json['city'], json['street'], json['building']);
}
