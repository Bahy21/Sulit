import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import '../../../../../../core/bloc/generic_cubit/generic_cubit.dart';
import '../../../../../../core/constants/gaps.dart';
import '../../../../../../core/routes/router_imports.gr.dart';
import '../../../../../../core/theme/text/app_text_style.dart';
import '../../../../../../core/widgets/DefaultButton.dart';
import '../../../../../../core/widgets/GenericTextField.dart';
import '../support_tickets_imports.dart';

part 'build_tickets_list.dart';
part 'build_add_tickets.dart';
part 'build_ticket_dialog.dart';