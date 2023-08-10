import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class FlashSale extends BaseDomainModel {
  int id;
  String title;
  DateTime date;
  String banner;

  FlashSale({
    required this.id,
    required this.title,
    required this.date,
    required this.banner,
  });
}
