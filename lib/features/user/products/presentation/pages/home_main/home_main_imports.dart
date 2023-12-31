import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/user/base/presentation/pages/home/home_imports.dart';
import 'package:flutter_tdd/features/user/base/presentation/widgets/build_search_app_bar.dart';
import 'package:flutter_tdd/features/user/products/domain/models/home_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/use_cases/get_home.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/products_helper.dart';
import 'package:flutter_tdd/features/user/products/presentation/pages/home_main/widgets/home_main_widgets_imports.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/flash_sale.dart';


part 'home_main.dart';

part 'home_main_controller.dart';