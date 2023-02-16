part of 'router_imports.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    ...authRoute,
    ...baseRoute,
    ...generalRoute,
    ...sellerRoute
  ],
)
class $AppRouter {}
