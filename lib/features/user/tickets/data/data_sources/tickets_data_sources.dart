import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/tickets/data/models/ticket_model/ticket_model.dart';
import 'package:flutter_tdd/features/user/tickets/domain/entities/add_ticket_reply.dart';
import 'package:flutter_tdd/features/user/tickets/domain/entities/create_ticket_params.dart';

abstract class TicketsDataSources {
  Future<Either<Failure, TicketModel>> createTicket (CreateTicketParams params);
  Future<Either<Failure, List<TicketModel>>> getTickets (bool param);
  Future<Either<Failure, TicketModel>> getTicketDetails (int param);
  Future<Either<Failure, bool>> addTicketReply (AddTicketReplyParams params);
}