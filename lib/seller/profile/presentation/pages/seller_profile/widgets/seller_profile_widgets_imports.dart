import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import '../../../../../../core/bloc/generic_cubit/generic_cubit.dart';
import '../../../../../../core/constants/gaps.dart';
import '../../../../../../core/theme/text/app_text_style.dart';
import '../../../../../../core/widgets/CachedImage.dart';
import '../../../../../../core/widgets/DropdownTextField.dart';
import '../../../../../../core/widgets/GenericTextField.dart';
import '../../../../../../res.dart';
import '../seller_profile_imports.dart';

part'build_seller_profile_basic_info.dart';
part 'build_seller_profile_payment_setting.dart';
part 'build_seller_profile_image.dart';