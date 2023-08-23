import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/general/auth/presentation/manager/helpers/auth_helper.dart';

class BuildLogOut extends StatelessWidget {
  const BuildLogOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool auth = context.read<DeviceCubit>().state.model.auth ;
    return InkWell(
      onTap: () => getIt<AuthHelper>().onLogOut(context),
      child: Container(
        width: 110.w,
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ).r,
        margin: const EdgeInsets.symmetric(
          vertical: 20,
        ).r,
        decoration: BoxDecoration(
          color: context.colors.primary,
          borderRadius: BorderRadius.circular(5).r,
        ),
        child: Row(
          children: [
            Text(
              auth ? "Logout" : 'Login',
              style: AppTextStyle.s16_w400(
                color: context.colors.white,
              ),
            ),
            Gaps.hGap5,
            Icon(
              Icons.logout_rounded,
              size: 15.r,
              color: context.colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
