part of 'addresses_widgets_imports.dart';

class BuildListAddressShimmer extends StatelessWidget {
  const BuildListAddressShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
      5,
          (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal:Dimens.dp20, vertical: Dimens.dp10),
          padding: const EdgeInsets.all(Dimens.dp10),
          decoration: BoxDecoration(
            borderRadius: Dimens.borderRadius10PX,
            color: context.colors.white,
            boxShadow: [
              BoxShadow(
                color: context.colors.greyWhite,
                spreadRadius: 1,
                blurRadius: 1,
              )
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildShimmerView(
                child: Radio<bool>(
                  onChanged: (value) {},
                  value: false,
                  groupValue: true,
                ),
              ),
              Gaps.hGap10,
              Expanded(
                child: Column(
                    children: List.generate(
                      6,
                          (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: Dimens.dp5),
                        child: Row(
                          children:  [
                            BuildShimmerView(
                              height: 5,
                              width: index.isEven ? 100 : 70,
                            ),
                            BuildShimmerView(child: Text("   :  ", style: AppTextStyle.s18_w700(color: context.colors.black),)),
                            BuildShimmerView(
                              height: 5,
                              width: index.isEven ? 100 : 70,
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          ),
        );
      },
    ),
    );
  }
}
