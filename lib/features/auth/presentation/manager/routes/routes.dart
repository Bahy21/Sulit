
import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/active_account/active_account_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/forget_password/forget_password_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/login/login_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/reset_password/reset_password_imports.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/splash/splash_imports.dart';

const List<AutoRoute> authRoute = [
  AdaptiveRoute(page: Splash, initial: true),
  AdaptiveRoute(page: Login),
  AdaptiveRoute(page: ActiveAccount),
  AdaptiveRoute(page: ResetPassword),
  AdaptiveRoute(page: ForgetPassword),
];