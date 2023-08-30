import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/tickets/domain/models/ticket.dart';
import 'package:flutter_tdd/features/user/tickets/domain/repository/tickets_repository.dart';

class GetTickets implements UseCase<List<Ticket>, bool> {
  @override
  Future<List<Ticket>> call(bool param) async {
    var result = await getIt<TicketsRepository>().getTickets(param);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
