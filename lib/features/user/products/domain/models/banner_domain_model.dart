import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class BannerDomainModel extends BaseDomainModel {
  final String photo;
  final String? url;

  BannerDomainModel({required this.photo, this.url});
}
