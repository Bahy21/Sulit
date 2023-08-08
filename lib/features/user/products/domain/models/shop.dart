import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class Shop extends BaseDomainModel {
  final int id;
  final int userId;
  final String name;
  final String title;
  final String description;
  final String logo;
  final String packageInvalidAt;
  final int products;
  final int orders;
  final String address;
  final String? email;
  final String? phone;
  final String? facebook;
  final String? google;
  final String? twitter;
  final String? instagram;
  final String? youtube;
  final int rating;

  Shop({
    required this.id,
    required this.userId,
    required this.name,
    required this.title,
    required this.description,
    required this.logo,
    required this.packageInvalidAt,
    required this.products,
    required this.orders,
    required this.address,
    this.phone,
    this.email,
    this.facebook,
    this.google,
    this.twitter,
    this.instagram,
    this.youtube,
    required this.rating,
  });
}
