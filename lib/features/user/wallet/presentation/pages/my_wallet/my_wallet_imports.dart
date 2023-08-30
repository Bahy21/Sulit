import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/features/user/wallet/domain/models/wallet.dart';
import 'package:flutter_tdd/features/user/wallet/domain/use_cases/get_my_wallet.dart';
import 'package:flutter_tdd/features/user/wallet/presentation/pages/my_wallet/widgets/my_wallet_widgets_imports.dart';

import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
part 'my_wallet.dart';
part 'my_wallet_controller.dart';