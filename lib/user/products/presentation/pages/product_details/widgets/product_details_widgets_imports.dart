import 'package:auto_route/auto_route.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/user/cart/presentation/pages/cart/widgets/cart_widgets_imports.dart';

import '../../../../../../core/bloc/generic_cubit/generic_cubit.dart';
import '../../../../../../core/routes/router_imports.gr.dart';
import '../../../../../../core/theme/text/app_text_style.dart';
import '../../../../../../core/widgets/CachedImage.dart';
import '../../../../../../core/widgets/DefaultButton.dart';
import '../../../../../../core/widgets/GenericTextField.dart';
import '../../../../../../res.dart';

import '../product_details_imports.dart';

part 'build_product_info.dart';
part 'build_seller_info.dart';
part 'product_details_swiper.dart';
part 'build_product_buttons.dart';
part 'build_share_item.dart';
part 'build_top_selling_products.dart';
part 'build_top_selling_item.dart';
part 'build_related_products.dart';
part 'build_products_description.dart';
part 'build_product_queries.dart';
part 'build_related_questions.dart';