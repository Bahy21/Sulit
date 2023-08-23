import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/widgets/build_custom_app_bar.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address.dart';
import 'package:flutter_tdd/features/user/addresses/domain/use_cases/get_addresses.dart';
import 'package:flutter_tdd/features/user/addresses/presentation/pages/addresses/widgets/addresses_widgets_imports.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_item.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/add_cart_address.dart';
import 'package:flutter_tdd/features/user/cart/presentation/widgets/build_cart_stepper.dart';

import 'widgets/shipping_widgets_imports.dart';
part 'shipping.dart';
part 'shipping_controller.dart';