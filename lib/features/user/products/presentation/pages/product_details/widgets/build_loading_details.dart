part of 'product_details_widgets_imports.dart';

class BuildLoadingDetails extends StatelessWidget {
  const BuildLoadingDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            BuildShimmerItem(height: 350.spMin),
            PositionedDirectional(
              end: 10,
              top: 5,
              child: Column(
                children: [
                  BuildShimmerItem(
                    child: BuildIconItem(
                      iconData: Icons.compare_arrows,
                      onTap: () {},
                      padding: Dimens.paddingAll10PX,
                    ),
                  ),
                  BuildShimmerItem(
                    child: BuildIconItem(
                      iconData: Icons.compare_arrows,
                      onTap: () {},
                      padding: Dimens.paddingAll10PX,
                    ),
                  ),
                ],
              ),
            ),
            PositionedDirectional(
              start: 5,
              top: 10,
              child: BuildIconItem(
                iconData: Icons.west,
                onTap: () => AutoRouter.of(context).pop(),
                padding: Dimens.paddingAll10PX,
              ),
            )
          ],
        ),
        Flexible(
          child: ListView(
            children: const [
              BuildLoadingInfo(),
              BuildLoadingAttributes(),
            ],
          ),
        ),
        Padding(
          padding: Dimens.paddingHorizontal15PX,
          child: SizedBox(
            height: 45.h,
            child: Row(
              children: [
                BuildShimmerItem(
                  height: 45.h,
                  width: 45.h,
                  margin: Dimens.paddingAll5PX,
                ),
                Expanded(
                  child: BuildShimmerItem(
                    height: 45.h,
                    margin: Dimens.paddingAll5PX,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
