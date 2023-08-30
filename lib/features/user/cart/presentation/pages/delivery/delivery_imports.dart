
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_item.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/pick_up.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/seller_shipping.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/apply_coupon.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/get_shipping_info.dart';
import 'package:flutter_tdd/features/user/cart/domain/use_cases/set_cart_store_shipping.dart';
import 'package:flutter_tdd/features/user/cart/presentation/widgets/build_cart_stepper.dart';
import 'package:flutter_tdd/core/widgets/build_custom_app_bar.dart';

import 'widgets/delivery_widgets_imports.dart';
part 'delivery.dart';
part 'delivery_controller.dart';