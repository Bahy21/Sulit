import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/dashboard/data/models/dashboards_model/dashboards_model.dart';

abstract class DashboardDataSources {
  Future<Either<Failure, DashboardsModel>> getDashboard(bool param);
}
