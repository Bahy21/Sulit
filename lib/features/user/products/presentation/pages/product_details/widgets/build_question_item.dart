part of 'product_details_widgets_imports.dart';

class BuildQuestionItem extends StatelessWidget {
  const BuildQuestionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5,
      ).r,
      width: 180.w,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5).r,
          color: context.colors.white,
          boxShadow: [
            BoxShadow(
                color: context.colors.greyWhite,
                blurRadius: 1,
                spreadRadius: 1)
          ]),
      child: ListTile(
        title: Text(
          "Tarek fouda",
          style: AppTextStyle.s14_w500(
              color: context.colors.black),
        ),
        subtitle: Text(
          "my first question",
          style: AppTextStyle.s12_w400(
              color: context.colors.blackOpacity),
        ),
        leading: CachedImage(
          height: 40.r,
          width: 40.r,
          fit: BoxFit.cover,
          haveRadius: false,
          boxShape: BoxShape.circle,
          placeHolder: Image.asset(
            Res.profile,
          ),
          url: "",
        ),
        minLeadingWidth: 10.w,
      ),
    );
  }
}
