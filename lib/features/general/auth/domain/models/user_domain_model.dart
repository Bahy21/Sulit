import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class UserDomainModel extends BaseDomainModel {
  final String id;
  final String name;
  final String avatar;
  final String avatarOriginal;
  final String email;
  final String phone;
  final String token;
  final String tokenType;

  UserDomainModel({
    required this.id,
    required this.name,
    required this.avatar,
    required this.avatarOriginal,
    required this.email,
    required this.phone,
    required this.token,
    required this.tokenType,
  });
}
