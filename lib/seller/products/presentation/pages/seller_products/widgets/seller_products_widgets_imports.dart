import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/user/purchasing/presentation/pages/purchased_history/widgets/purchased_history_widgets_imports.dart';

import '../../../../../../core/bloc/generic_cubit/generic_cubit.dart';
import '../../../../../../core/constants/gaps.dart';
import '../../../../../../core/routes/router_imports.gr.dart';
import '../../../../../../core/theme/text/app_text_style.dart';
import '../seller_products_imports.dart';

part 'build_seller_add_new_product.dart';
part 'build_seller_products.dart';