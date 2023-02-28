import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/features/user/addresses/presentation/pages/add_new_address/add_new_address_imports.dart';
import 'package:flutter_tdd/features/user/addresses/presentation/pages/addresses/addresses_imports.dart';

const List<AutoRoute> addressesRoute = [
  AdaptiveRoute(page: AddNewAddress),
  AdaptiveRoute(page: Addresses),
];
