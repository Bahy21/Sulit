part of'product_details_widgets_imports.dart';
class BuildProductDescription extends StatelessWidget {
  const BuildProductDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            indicatorColor: context.colors.primary,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor:context.colors.primary,
            unselectedLabelColor:context.colors.gray,
            tabs: const [
              Tab(
                text: "Description",
              ),
              Tab(
                text: "Reviews",
              )
            ]),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10).r,
          child: SizedBox(
            height: MediaQuery.of(context).size.height*.2,
            child: TabBarView(
                children: [
              ListView(
                children: [
                  Container(
                    padding:EdgeInsets.symmetric(vertical: 7).r,
                    child:  Text(
                      "DescriptionDescriptionDescriptionDescriptionDescriptionDescrip"
                          "tionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"
                          "DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescr"
                          "iptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription ",
                      style: AppTextStyle.s14_w400(
                        color: context.colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding:const EdgeInsets.symmetric(vertical: 7).r,

                child:Text(
                  "Reviews ",
                  style: AppTextStyle.s14_w400(
                    color: context.colors.black,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
