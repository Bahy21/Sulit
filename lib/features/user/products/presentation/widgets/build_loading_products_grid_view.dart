import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/widgets/GenericListView.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_product_item_shimmer.dart';

class BuildLoadingProductsGridView extends StatelessWidget {
  const BuildLoadingProductsGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GenericListView(
      type: ListViewType.grid,
      runSpacing: 15.r,
      spacing: 15.r,
      gridCrossCount: 2,
      gridItemHeight: 200.spMin,
      padding: Dimens.standardPadding,
      children: List.generate(
        8,
        (index) => const BuildProductItemShimmer(),
      ),
    );
  }
}
