import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';

import 'package:flutter_tdd/features/user/base/presentation/pages/home/home_imports.dart';
import 'package:flutter_tdd/features/user/base/presentation/widgets/build_search_app_bar.dart';
import 'package:flutter_tdd/features/user/category/domain/use_cases/get_categories.dart';
import 'package:flutter_tdd/features/user/category/presentation/pages/categories/widgets/categories_widgets_imports.dart';
import 'package:flutter_tdd/features/user/products/data/model/category_model/category_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/category_domain_model.dart';


part 'categories.dart';
part 'categories_controller.dart';