part of 'seller_dashboard_widgets_imports.dart';

class BuildTopProducts extends StatelessWidget {
  const BuildTopProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.spMin,
      padding: const EdgeInsets.all(Dimens.dp20),
      margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
      decoration: BoxDecoration(
        borderRadius: Dimens.borderRadius10PX,
        color: context.colors.white,
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top Products",
            style: AppTextStyle.s16_w700(
              color: context.colors.black,
            ),
          ),
          Gaps.vGap15,
          Flexible(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  8,
                  (index) => const BuildTopProductItem(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
