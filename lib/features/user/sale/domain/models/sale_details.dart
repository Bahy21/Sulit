import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_domain_model.dart';

class SaleDetailsDomainModel extends BaseDomainModel{
  int id;
  String title;
  DateTime date;
  String banner;
  List<ProductDomainModel> products;

  SaleDetailsDomainModel({
    required this.id,
    required this.title,
    required this.date,
    required this.banner,
    required this.products,
  });
}
