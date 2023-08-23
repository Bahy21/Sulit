part of 'support_tickets_widgets_imports.dart';

class BuildSupportTicketsLoading extends StatelessWidget {
  const BuildSupportTicketsLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
      children: [
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
            BuildShimmerItem(
              height: 10.h,
              width: 100.w,
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
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 5,
          ).r,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12).r,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5).r,
            color: context.colors.white,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  BuildShimmerItem(
                    width: 100,
                    height: 10,
                  ),
                  BuildShimmerItem(
                    width: 50,
                    height: 10,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
