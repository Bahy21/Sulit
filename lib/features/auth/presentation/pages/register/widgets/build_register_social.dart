part of'build_register_widgets_imports.dart';
class BuildRegisterSocial extends StatelessWidget {
  const BuildRegisterSocial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20).r,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Divider(color: context.colors.blackOpacity,endIndent: 20,)),
              Text(
                "Or join with",
                style: AppTextStyle.s16_w400(color: context.colors.black),
              ),
              Expanded(child: Divider(color: context.colors.blackOpacity,indent: 20,)),
            ],
          ),
          Gaps.vGap32,
          SvgPicture.asset(Res.facebook, width: 50.r,height: 50.r,),        ],
      ),
    );
  }
}
