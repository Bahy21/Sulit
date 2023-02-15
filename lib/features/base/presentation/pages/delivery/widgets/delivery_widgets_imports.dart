import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/DefaultButton.dart';
import 'package:flutter_tdd/core/widgets/DropdownTextField.dart';
import 'package:flutter_tdd/features/base/data/models/drop_down_model/drop_down_model.dart';
import 'package:flutter_tdd/features/base/presentation/pages/delivery/delivery_imports.dart';
part 'build_delivery_buttons.dart';
part 'build_delivery_products.dart';
part 'build_delivery_type.dart';
part 'build_delivery_item.dart';
part 'build_delivery_product_item.dart';
