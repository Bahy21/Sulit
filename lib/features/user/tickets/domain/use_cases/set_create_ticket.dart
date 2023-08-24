import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/tickets/domain/entities/create_ticket_params.dart';
import 'package:flutter_tdd/features/user/tickets/domain/models/ticket.dart';
import 'package:flutter_tdd/features/user/tickets/domain/repository/tickets_repository.dart';

class SetCreateTicket implements UseCase<Ticket?, CreateTicketParams> {
  @override
  Future<Ticket?> call(CreateTicketParams params) async {
    var data = await getIt<TicketsRepository>().createTicket(params);
    return data.fold((l) => null, (r) => r);
  }
}
