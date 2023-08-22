import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/tickets/domain/models/ticket.dart';
import 'package:flutter_tdd/features/user/tickets/domain/repository/tickets_repository.dart';

class GetTicketDetails implements UseCase<Ticket?, int> {
  @override
  Future<Ticket?> call(int param) async {
    var result = await getIt<TicketsRepository>().getTicketDetails(param);
    return result.fold(
      (l) => null,
      (r) => r,
    );
  }
}
