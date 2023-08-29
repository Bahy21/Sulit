part of 'conversations_widgets_imports.dart';

class BuildConversationItem extends StatelessWidget {
  const BuildConversationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(
          vertical: 5,
        ).r,
        decoration: CustomDecoration(),
        child: ListTile(
          title: Text(
            "Tarek fouda",
            style: AppTextStyle.s14_w500(color: context.colors.black),
          ),
          subtitle: Text(
            "my last message",
            style: AppTextStyle.s12_w400(color: context.colors.blackOpacity),
          ),
          leading: CachedImage(
            height: 40.r,
            width: 40.r,
            fit: BoxFit.cover,
            haveRadius: false,
            boxShape: BoxShape.circle,
            placeHolder: Image.asset(Res.profile),
            url: "",
          ),
          trailing: Text(
            "12/3/2023 3:00 pm",
            style: AppTextStyle.s12_w400(color: context.colors.blackOpacity),
          ),
          minLeadingWidth: 10.w,
        ));
  }
}
