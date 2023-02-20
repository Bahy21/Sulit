part of 'seller_add_product_widgets_imports.dart';

class BuildCustomContainer extends StatelessWidget {
  final String title;
  final Widget child;

  const BuildCustomContainer(
      {super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
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
            title,
            style: AppTextStyle.s16_w700(
              color: context.colors.black,
            ),
          ),
          Gaps.line(context.colors.gray, 35),
          child,
        ],
      ),
    );
  }
}
