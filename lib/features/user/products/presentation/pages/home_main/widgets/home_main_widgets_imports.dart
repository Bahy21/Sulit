import 'package:auto_route/auto_route.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';

import 'package:flutter_tdd/res.dart';
import 'package:flutter_tdd/features/user/base/presentation/pages/home/home_imports.dart';


part 'build_home_main_app_bar.dart';

part 'build_home_swiper.dart';

part 'build_flash_sale_counter.dart';

part 'build_home_list_item.dart';

part 'build_home_list_products.dart';
part 'build_featured_products.dart';
part 'build_best_selling_products.dart';
part 'build_todays_item.dart';
part 'build_today_products.dart';
part 'build_header_title.dart';
part 'build_top_categories.dart';
part'build_category_item.dart';
part 'build_top_brands.dart';