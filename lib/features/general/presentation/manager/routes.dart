import 'package:auto_route/auto_route.dart';

import '../pages/privacy/privacy_imports.dart';
import '../pages/return_policy/return_policy_import.dart';
import '../pages/support_policy/support_policy_imports.dart';
import '../pages/terms/terms_imports.dart';


const List<AutoRoute> generalRoute = [
  AutoRoute(page: Terms),
  AutoRoute(page: Privacy),
  AutoRoute(page: ReturnPolicy),
  AutoRoute(page: SupportPolicy),

];
