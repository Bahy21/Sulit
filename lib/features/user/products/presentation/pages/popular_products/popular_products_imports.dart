import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/build_empty_data_view.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/popular_products_entity.dart';
import 'package:flutter_tdd/features/user/products/domain/models/popular_products_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/use_cases/get_popular_products.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_product_item.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
part 'popular_products.dart';
part 'popular_products_controller.dart';