import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/GenericListView.dart';
import 'package:flutter_tdd/core/widgets/build_empty_data_view.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/base/presentation/widgets/build_search_app_bar.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/brand_details_params.dart';
import 'package:flutter_tdd/features/user/category/domain/use_cases/get_brand_products.dart';
import 'package:flutter_tdd/features/user/category/presentation/pages/brand_details/widgets/brand_details_w_imports.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/presentation/pages/home_main/widgets/home_main_widgets_imports.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_loading_products_grid_view.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_product_item.dart';
import 'package:flutter_tdd/res.dart';
import 'package:lottie/lottie.dart';

part 'brand_details.dart';
part 'brand_details_controller.dart';