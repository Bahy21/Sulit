import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/base/presentation/pages/addresses/widgets/addresses_widgets_imports.dart';

import 'package:flutter_tdd/features/general/domain/entities/location_entity.dart';
import 'package:flutter_tdd/features/general/presentation/pages/location_address/location_cubit/location_cubit.dart';

import '../../../../../core/constants/dimens.dart';
import '../../../../../core/theme/text/app_text_style.dart';

part 'addresses.dart';

part 'addressess_data.dart';