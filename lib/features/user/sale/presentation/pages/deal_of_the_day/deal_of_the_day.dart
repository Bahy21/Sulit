part of 'deal_of_the_day_imports.dart';

class DealOfTheDay extends StatefulWidget {
  const DealOfTheDay({Key? key}) : super(key: key);

  @override
  State<DealOfTheDay> createState() => _DealOfTheDayState();
}

class _DealOfTheDayState extends State<DealOfTheDay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DefaultAppBar(title: "Deal of the day", showBack: true),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: context.colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: context.colors.greyWhite,
                            blurRadius: 1,
                            spreadRadius: 1)
                      ]),
                  child: Image.network(
                    "https://valuford.com/wp-content/uploads/2020/10/deals.jpg",
                    height: 200.h,
                    width: MediaQuery.of(context).size.width,
                    colorBlendMode: BlendMode.darken,
                  ),
                ),
                Container(
                  height: 80.h,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: context.colors.shadowColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: const Radius.circular(5).r,
                          bottomRight: const Radius.circular(5).r)),
                  child: Text(
                    "This offer has been expired",
                    style: AppTextStyle.s18_w500(color: context.colors.white),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
