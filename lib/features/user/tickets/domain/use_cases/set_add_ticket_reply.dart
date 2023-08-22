import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/tickets/domain/entities/add_ticket_reply.dart';
import 'package:flutter_tdd/features/user/tickets/domain/repository/tickets_repository.dart';

class SetAddTicketReply implements UseCase<bool, AddTicketReplyParams> {
  @override
  Future<bool> call(AddTicketReplyParams params) async {
    var result = await getIt<TicketsRepository>().addTicketReply(params);
    return result.fold(
      (l) => false,
      (r) => r,
    );
  }
}
