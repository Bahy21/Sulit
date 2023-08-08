import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/user_details.dart';

class Queries extends BaseDomainModel {
  final int id;
  final String question;
  final String reply;
  final UserDetails userDetails;

  Queries(
      {required this.id,
      required this.question,
      required this.reply,
      required this.userDetails});
}
