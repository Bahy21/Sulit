import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class ProductDomainModel  extends BaseDomainModel{
  final int id;
  final String name;
  final String thumbnailImage;
  final bool hasDiscount;
  final String discount;
  final String strokedPrice;
  final String mainPrice;
  final num rating;
  final int sales;
  final int sellerId;
  final bool isResale;
  final int resellerId;

  ProductDomainModel({
    required this.id,
    required this.name,
    required this.thumbnailImage,
    required this.hasDiscount,
    required this.discount,
    required this.strokedPrice,
    required this.mainPrice,
    required this.rating,
    required this.sales,
    required this.sellerId,
    required this.isResale,
    required this.resellerId,
  });
}
