import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/user_details.dart';

class Reviews extends BaseDomainModel {
  final int id;
  final int rate;
  final String comment;
  final UserDetails userReview;
  final String createdAt;

  Reviews(
      {required this.id,
      required this.rate,
      required this.comment,
      required this.userReview,
      required this.createdAt});
}
