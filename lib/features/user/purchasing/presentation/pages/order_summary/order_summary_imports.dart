import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/use_cases/get_track_order.dart';
import 'package:flutter_tdd/features/user/purchasing/presentation/pages/order_summary/widgets/order_summary_widgets_imports.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';

import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';


part 'order_summary.dart';

part 'order_summary_controller.dart';
