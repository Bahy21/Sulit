part of'home_main_widgets_imports.dart';

class BuildFlashSaleCounter extends StatelessWidget {
  const BuildFlashSaleCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Flash Sale",
            style: AppTextStyle.s18_w700(
                color: context.colors.black),
          ),
          Wrap(
            spacing: 5,
            children: [
              ...List.generate(
                4,
                    (index) => Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10).r,
                      decoration: BoxDecoration(
                        color: context.colors.primary,
                        borderRadius:
                        BorderRadius.circular(3),
                      ),
                      child: Text(
                        "00",
                        style: AppTextStyle.s8_w400(
                            color: context.colors.white),
                      ),
                    ),
                    Gaps.hGap5,
                    if (index != 3)
                      Text(
                        ":",
                        style: AppTextStyle.s10_w700(
                            color: context.colors.black),
                      )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
