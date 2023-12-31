import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/file_helper.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/GenericListView.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/use_cases/get_purchasing_history.dart';
import 'package:flutter_tdd/features/user/purchasing/presentation/pages/purchased_history/widgets/purchased_history_widgets_imports.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
part 'purchased_history.dart';
part 'purchased_history_controller.dart';