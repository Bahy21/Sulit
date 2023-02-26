import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/user/cart/presentation/pages/cart/widgets/cart_widgets_imports.dart';

import '../../../../../../core/bloc/generic_cubit/generic_cubit.dart';
import '../../../../../../core/constants/gaps.dart';
import '../../../../../../core/theme/text/app_text_style.dart';
import '../../../../../../core/widgets/DefaultButton.dart';
import '../../../../../../core/widgets/GenericTextField.dart';
import '../seller_reselling_imports.dart';

part 'build_reselling_header.dart';
part 'build_reselling_products.dart';
part 'build_reselling_product_details_dialog.dart';