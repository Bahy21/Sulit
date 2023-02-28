import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/DefaultButton.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/res.dart';
import '../tickets_details_imports.dart';

part 'build_add_replay_button.dart';
part 'build_replay_item.dart';
part 'build_ticket_details_item.dart';
part 'build_ticket_details_dialog.dart';