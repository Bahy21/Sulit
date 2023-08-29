import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/tickets/domain/entities/add_ticket_reply.dart';
import 'package:flutter_tdd/features/user/tickets/domain/models/ticket_reply.dart';
import 'package:flutter_tdd/features/user/tickets/domain/repository/tickets_repository.dart';

class SetAddTicketReply implements UseCase<TicketReply?, AddTicketReplyParams> {
  @override
  Future<TicketReply?> call(AddTicketReplyParams params) async {
    var result = await getIt<TicketsRepository>().addTicketReply(params);
    return result.fold((l) => null, (r) => r);
  }
}
