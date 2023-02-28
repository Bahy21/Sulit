part of 'seller_dashboard_widgets_imports.dart';

class BuildSellerDrawerHeader extends StatelessWidget {
  const BuildSellerDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20).r,
      child: Column(
        children: [
          Gaps.vGap32,
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.colors.gray,
            ),
            child: CachedImage(
              fit: BoxFit.cover,
              haveRadius: false,
              boxShape: BoxShape.circle,
              placeHolder: Image.asset(
                Res.profile,
                height: 80.r,
                width: 80.r,
              ),
              url: "",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10).r,
            child: Column(
              children: [
                Text(
                  "Tarek Seller",
                  style: AppTextStyle.s16_w500(
                    color: context.colors.black,
                  ),
                ),
                Gaps.vGap10,
                Text(
                  "Seller@example.com",
                  style: AppTextStyle.s14_w400(
                    color: context.colors.blackOpacity,
                  ),
                ),
              ],
            ),
          ),
          DefaultButton(
            title: "Verify Account",
            borderRadius: BorderRadius.circular(5).r,
            width: 100.w,
            height: 25.h,
            fontSize: 10,
            color: context.colors.darkPurple,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10).r,
            onTap: () {},
          ),
          // GenericTextField(
          //   radius: BorderRadius.circular(5).r,
          //   fillColor: context.colors.greyWhite,
          //   contentPadding: const EdgeInsets.symmetric(vertical: 1,horizontal: 16).r,
          //   fieldTypes: FieldTypes.normal,
          //   type: TextInputType.text,
          //   action: TextInputAction.search,
          //   validate: (value) => value?.noValidate(),
          //   hint: "Search in menu",
          //   hintColor: context.colors.disableGray,
          //   margin: const EdgeInsets.only(top: 10,right: 20,left: 20).r,
          // )
        ],
      ),
    );
  }
}
