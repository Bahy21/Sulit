import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/features/user/tickets/domain/entities/create_ticket_params.dart';
import 'package:flutter_tdd/features/user/tickets/domain/models/ticket.dart';
import 'package:flutter_tdd/features/user/tickets/domain/use_cases/get_tickets.dart';
import 'package:flutter_tdd/features/user/tickets/domain/use_cases/set_create_ticket.dart';
import 'package:flutter_tdd/features/user/tickets/presentation/pages/support_tickets/widgets/support_tickets_widgets_imports.dart';

import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';

part 'support_tickets.dart';
 part 'support_tickets_controller.dart';