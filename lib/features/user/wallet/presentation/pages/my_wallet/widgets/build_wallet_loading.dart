part of 'my_wallet_widgets_imports.dart';

class BuildWalletLoading extends StatelessWidget {
  const BuildWalletLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding:
      const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
      children: [
        Container(
          alignment: AlignmentDirectional.center,
          padding: const EdgeInsets.all(16).r,
          margin: const EdgeInsets.symmetric(vertical: 4).r,
          decoration: BoxDecoration(
            color: context.colors.greyWhite,
            borderRadius: BorderRadius.circular(10).r,
          ),
          child: Column(
            children: [
              BuildShimmerItem(
                  child: Icon(
                    Icons.monetization_on_outlined,
                    color: context.colors.white,
                    size: 30.sp,
                  )),
              Gaps.vGap20,
              const BuildShimmerItem(
                height: 10,
                width: 60,
              ),
              Gaps.vGap10,
              const BuildShimmerItem(
                height: 10,
                width: 100,
              )
            ],
          ),
        ),
        Gaps.vGap20,
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12).r,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.colors.greyWhite,
              ),
              child: BuildShimmerItem(
                child: Icon(
                  Icons.add,
                  color: context.colors.white,
                  size: 35.sp,
                ),
              ),
            ),
            Gaps.vGap20,
            const BuildShimmerItem(
              width: 100,
              height: 7,
            ),
            BuildShimmerItem(
              child: Divider(
                color: context.colors.greyWhite,
                height: 20.h,
              ),
            )
          ],
        ),
        Gaps.vGap32,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BuildShimmerItem(
              height: 12,
              width: 150,
            ),
            Gaps.vGap20,
            ...List.generate(
              4,
                  (index) => Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 5,
                ).r,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5).r,
                  color: context.colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: context.colors.greyWhite,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: ListTile(
                  title: Row(
                    children: const [
                      BuildShimmerItem(
                        height: 12,
                        width: 100,
                      ),
                    ],
                  ),
                  trailing: const BuildShimmerItem(
                    height: 7,
                    width: 50,
                  ),
                  minLeadingWidth: 10.w,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
