import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_product_item.dart';
import 'package:flutter_tdd/features/user/wishlist/domain/use_cases/get_wish_list.dart';
import 'package:flutter_tdd/features/user/wishlist/presentation/pages/wishlist/widgets/wishlist_widgets_imports.dart';

import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
part 'wishlist.dart';
part 'wishlist_controller.dart';