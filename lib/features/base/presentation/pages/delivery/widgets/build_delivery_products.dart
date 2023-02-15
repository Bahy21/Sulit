part of 'delivery_widgets_imports.dart';

class BuildDeliveryProducts extends StatelessWidget {
  const BuildDeliveryProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(Dimens.dp20),
          margin: const EdgeInsets.symmetric(vertical: Dimens.dp5),
          decoration: BoxDecoration(
            borderRadius: Dimens.borderRadius10PX,
            color: context.colors.greyWhite.withOpacity(.1),
          ),
          child: Text(
            "Products",
            style: AppTextStyle.s15_w700(color: context.colors.black),
          ),
        ),
        ...List.generate(
          2,
          (index) => const BuildDeliveryProductItem(),
        )
      ],
    );
  }
}
