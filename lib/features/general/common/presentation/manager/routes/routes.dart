import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/features/general/common/presentation/pages/contact_us/contact_us_imports.dart';
import 'package:flutter_tdd/features/general/common/presentation/pages/privacy/privacy_imports.dart';
import 'package:flutter_tdd/features/general/common/presentation/pages/return_policy/return_policy_import.dart';
import 'package:flutter_tdd/features/general/common/presentation/pages/support_policy/support_policy_imports.dart';
import 'package:flutter_tdd/features/general/common/presentation/pages/terms/terms_imports.dart';

const List<AutoRoute> commonRoute = [
  AutoRoute(page: Terms),
  AutoRoute(page: Privacy),
  AutoRoute(page: ReturnPolicy),
  AutoRoute(page: SupportPolicy),
  AutoRoute(page: ContactUs),
];
