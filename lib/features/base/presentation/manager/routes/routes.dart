import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/features/base/presentation/pages/conversations/conversations_imports.dart';
import 'package:flutter_tdd/features/base/presentation/pages/dashboard/dashboard_imports.dart';
import 'package:flutter_tdd/features/base/presentation/pages/home/home_imports.dart';

import '../../pages/downloads/downloads_import.dart';
import '../../pages/my_wallet/my_wallet_imports.dart';
import '../../pages/profile/profile_imports.dart';
import '../../pages/purchased_history/purchased_history_imports.dart';
import '../../pages/support_tickets/support_tickets_imports.dart';
import '../../pages/wishlist/wishlist_imports.dart';

const List<AutoRoute> baseRoute = [
  AutoRoute(page: Home),
  AutoRoute(page: Profile),
  AutoRoute(page: DashBoard),
  AutoRoute(page: Downloads),
  AutoRoute(page: PurchasedHistory),
  AutoRoute(page: Wishlist),
  AutoRoute(page: Conversations),
  AutoRoute(page: MyWallet),
  AutoRoute(page: SupportTickets),
];
