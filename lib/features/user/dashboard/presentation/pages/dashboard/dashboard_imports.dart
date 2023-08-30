import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/user/dashboard/domain/models/dashboards.dart';
import 'package:flutter_tdd/features/user/dashboard/domain/use_cases/get_dashboards.dart';
import 'package:flutter_tdd/features/user/dashboard/presentation/pages/dashboard/widgets/dashboard_widgets_imports.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';

part 'dashboard.dart';

part 'dashboard_controller.dart';
