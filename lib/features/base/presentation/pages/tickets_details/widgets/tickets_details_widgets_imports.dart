import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import '../../../../../../core/bloc/generic_cubit/generic_cubit.dart';
import '../../../../../../core/theme/text/app_text_style.dart';
import '../../../../../../core/widgets/CachedImage.dart';
import '../../../../../../core/widgets/DefaultButton.dart';
import '../../../../../../core/widgets/GenericTextField.dart';
import '../../../../../../res.dart';
import '../tickets_details_imports.dart';

part 'build_add_replay_button.dart';
part 'build_replay_item.dart';
part 'build_ticket_details_item.dart';
part 'build_ticket_details_dialog.dart';