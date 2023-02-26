part of 'router_imports.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    //general
    ...authRoute,
    ...commonRoute,
    ...conversationRoute,
    //seller
    ...sellerDashboardRoute,
    ...sellerFilesRoute,
    ...sellerNotifyRoute,
    ...sellerOrderRoutes,
    ...sellerPaymentRoute,
    ...sellerProductsRoute,
    ...sellerProfileRoute,
    ...sellerShopRoute,
    //user
    ...addressesRoute,
    ...baseRoute,
    ...cartRoute,
    ...categoryRoute,
    ...dashboardRoute,
    ...notifyRoute,
    ...productsRoute,
    ...profileRoute,
    ...purchasingRoute,
    ...saleRoute,
    ...ticketRoute,
    ...walletRoute,
  ],
)
class $AppRouter {}
