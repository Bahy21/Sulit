part of 'login_widgets_imports.dart';

class BuildLoginSocialMedia extends StatelessWidget {
  final LoginController controller;

  const BuildLoginSocialMedia({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Divider(color: context.colors.blackOpacity,endIndent: 20,)),
              Text(
                "Or Login with",
                style: AppTextStyle.s16_w400(color: context.colors.black),
              ),
              Expanded(child: Divider(color: context.colors.blackOpacity,indent: 20,)),
            ],
          ),
          Gaps.vGap32,
          SvgPicture.asset(Res.facebook, width: 50,height: 50,),        ],
      ),
    );
  }
}
