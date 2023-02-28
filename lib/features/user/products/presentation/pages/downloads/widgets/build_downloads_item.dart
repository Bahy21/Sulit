part of'downloads_widgets_imports.dart';
class BuildDownloadsItem extends StatelessWidget {
  const BuildDownloadsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 5,).r,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5).r,
            color: context.colors.white,
            boxShadow: [
              BoxShadow(
                  color: context.colors.greyWhite, blurRadius: 1, spreadRadius: 1)
            ]),
        child: ListTile(
          title: Row(
            children: [
              Text(
                "Product : ",
                style: AppTextStyle.s13_w500(color: context.colors.black),
              ),
              Text(
                "admin digital product",
                style: AppTextStyle.s12_w400(color: context.colors.blackOpacity),
              ),
            ],
          ),

          trailing: BuildOptionItem(
            onTap: () {},
            iconData: Icons.download,
            customColor: context.colors.blue,
          ),
          minLeadingWidth: 10.w,
        )
    );
  }
}
