import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/features/base/presentation/pages/home/tabs/more/widgets/more_widgets_imports.dart';
import 'package:flutter_tdd/features/base/presentation/widgets/build_search_app_bar.dart';

import '../../../../../../../core/constants/gaps.dart';
import '../../../../../../../core/routes/router_imports.gr.dart';
import '../../home_imports.dart';
import '../home_main/widgets/home_main_widgets_imports.dart';

part 'more.dart';
part 'more_controller.dart';