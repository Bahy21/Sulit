import 'package:animations/animations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/DefaultButton.dart';
import 'package:flutter_tdd/core/widgets/GenericListView.dart';
import 'package:flutter_tdd/core/widgets/GridFixedHeightDelegate.dart';
import 'package:flutter_tdd/res.dart';
import 'package:flutter_tdd/seller/dashboard/presentation/pages/seller_dashboard/seller_dashboard_imports.dart';
import 'package:flutter_tdd/seller/notifications/presentation/pages/seller_notifications/seller_notifications_imports.dart';
import 'package:flutter_tdd/seller/products/presentation/widgets/build_sub_product_item.dart';
import 'package:flutter_tdd/user/base/presentation/widgets/build_drawer_item.dart';
part 'build_seller_app_bar.dart';
part 'build_dashboard_item.dart';
part 'build_settings.dart';
part 'build_setting_item.dart';
part 'build_top_products.dart';
part 'build_top_product_item.dart';
part 'build_dashboard_news.dart';
part 'build_seller_drawer.dart';
part 'build_seller_drawer_header.dart';
part 'build_seller_drawer_item.dart';