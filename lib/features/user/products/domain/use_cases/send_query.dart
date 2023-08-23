import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/send_query_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/queries.dart';
import 'package:flutter_tdd/features/user/products/domain/repository/products_repository.dart';

class SendQuery extends UseCase<Queries?, SendQueryParams> {
  @override
  Future<Queries?> call(SendQueryParams params) async {
    var result = await getIt<ProductsRepository>().sendQuery(params);
    return result.fold((l) => null, (r) => r);
  }
}
