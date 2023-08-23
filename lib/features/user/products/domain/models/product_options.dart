import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class ProductOptions extends BaseDomainModel {
  final int attributeId;
  final String title;
  final List<String> options;
   List<String> selectedAttribute;
   bool? hasValue;

  ProductOptions(
      {required this.attributeId,
      required this.title,
      required this.options,
      required this.selectedAttribute,
       this.hasValue=false});
}
