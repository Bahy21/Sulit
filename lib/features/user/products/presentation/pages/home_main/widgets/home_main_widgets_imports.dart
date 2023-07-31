import 'package:auto_route/auto_route.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/models/api_models/brand_model/brand_model.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/features/user/category/presentation/pages/category_details/widgets/category_details_widgets_imports.dart';
import 'package:flutter_tdd/features/user/products/data/model/banner_model/banner_model.dart';
import 'package:flutter_tdd/features/user/products/data/model/category_model/category_model.dart';
import 'package:flutter_tdd/features/user/products/data/model/popular_product_model/popular_product_model.dart';
import 'package:flutter_tdd/features/user/products/data/model/product_model/product_model.dart';
import 'package:flutter_tdd/features/user/products/data/model/slider_model/slider_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/home_domain_model.dart';

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
part 'build_home_categories.dart';
part 'build_banners.dart';
part 'build_best_selling_products.dart';
part 'build_popular_item.dart';
part 'build_custom_header_title.dart';
part 'build_product_item.dart';
part 'build_brand_item.dart';
part 'build_loading_home_view.dart';
part 'build_home_view.dart';
part 'build_deals.dart';
part 'build_home_category_item.dart';
