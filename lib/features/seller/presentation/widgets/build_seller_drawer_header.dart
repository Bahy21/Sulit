import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';

import '../../../../../core/constants/gaps.dart';
import '../../../../../core/theme/text/app_text_style.dart';
import '../../../../../core/widgets/GenericTextField.dart';
import '../../../../../res.dart';

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
            padding: const EdgeInsets.only(top:10 ).r,
            child: Column(
              children: [
                Text(
                  "Tarek Fouda",
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
        GenericTextField(
          radius: BorderRadius.circular(5).r,
          fillColor: context.colors.greyWhite,
          contentPadding: const EdgeInsets.symmetric(vertical: 1,horizontal: 16).r,
          fieldTypes: FieldTypes.normal,
          type: TextInputType.text,
          action: TextInputAction.search,
          validate: (value) => value?.noValidate(),
          hint: "Search in menu",
          hintColor: context.colors.disableGray,
          margin: const EdgeInsets.only(top: 20,right: 20,left: 20).r,
        )
        ],
      ),
    );
  }
}
