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
import '../../../../../../core/widgets/DefaultButton.dart';
import '../../../../../../core/widgets/DropdownTextField.dart';
import '../../../../../../core/widgets/GenericTextField.dart';
import '../../../../../base/data/models/drop_down_model/drop_down_model.dart';
import '../seller_shop_setting_imports.dart';

part 'build_seller_shop_fields.dart';
part 'build_resell_check_box.dart';
part 'build_shop_setting_button.dart';
part 'build_basic_fields.dart';
part 'build_banner_settings.dart';
part'build_social_media_links.dart';