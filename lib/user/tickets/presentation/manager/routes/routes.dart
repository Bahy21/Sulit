import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/user/tickets/presentation/pages/support_tickets/support_tickets_imports.dart';
import 'package:flutter_tdd/user/tickets/presentation/pages/tickets_details/tickets_details_imports.dart';

const List<AutoRoute> ticketRoute = [
  AdaptiveRoute(page: SupportTickets),
  AdaptiveRoute(page: TicketsDetails),
];
