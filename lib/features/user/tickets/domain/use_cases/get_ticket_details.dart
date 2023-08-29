import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/tickets/domain/models/ticket.dart';
import 'package:flutter_tdd/features/user/tickets/domain/repository/tickets_repository.dart';

class GetTicketDetails implements UseCase<Ticket?, GenericParams> {
  @override
  Future<Ticket?> call(GenericParams param) async {
    var result = await getIt<TicketsRepository>().getTicketDetails(param);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
