import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/DropdownTextField.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/features/base/data/models/drop_down_model/drop_down_model.dart';
import 'package:flutter_tdd/features/seller/presentation/pages/seller_add_product/seller_add_product_imports.dart';
import 'package:flutter_tdd/res.dart';

part 'build_product_information_fields.dart';

part 'build_custom_container.dart';

part 'build_product_images_fields.dart';

part 'build_product_video_fields.dart';

part 'build_product_specification_fields.dart';

part 'build_product_stock_fields.dart';

part 'build_product_pdf_fields.dart';

part 'build_product_description_fields.dart';
part 'build_product_meta_tags_fields.dart';
part 'build_shipping_days_fields.dart';
part 'build_tax_fields.dart';
