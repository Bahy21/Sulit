import 'package:auto_route/auto_route.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';

import 'package:flutter_tdd/core/models/domain_models/brand_domain_model.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/products/domain/models/banner_domain_model.dart';

import 'package:flutter_tdd/features/user/products/domain/models/home_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/popular_products_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/slider_domain_model.dart';
import 'package:flutter_tdd/features/user/products/presentation/pages/home_main/home_main_imports.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_product_item.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/flash_sale.dart';

import 'package:flutter_tdd/res.dart';
import 'package:flutter_tdd/features/user/base/presentation/pages/home/home_imports.dart';



part 'build_home_main_app_bar.dart';

part 'build_home_swiper.dart';

part 'build_deals_item.dart';


part 'build_home_new_products.dart';
part 'build_featured_products.dart';
part 'build_popular_products.dart';
part 'build_header_title.dart';
part 'build_top_categories.dart';
part 'build_top_category_item.dart';
part 'build_top_brands.dart';
part 'build_banners.dart';
part 'build_best_selling_products.dart';
part 'build_popular_item.dart';
part 'build_custom_header_title.dart';
part 'build_top_brand_item.dart';
part 'build_loading_home_view.dart';
part 'build_home_view.dart';
part 'build_deals.dart';
