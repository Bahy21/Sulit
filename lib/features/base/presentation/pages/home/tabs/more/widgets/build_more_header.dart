
part of'more_widgets_imports.dart';
class BuildMoreHeader extends StatelessWidget {
  final MoreController moreController;
  const BuildMoreHeader({Key? key, required this.moreController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              BlocBuilder<GenericBloc<File?>, GenericState<File?>>(
                bloc: moreController.imageCubit,
                builder: (context, state) {
                  if (state is GenericUpdateState) {
                    return Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // border: Border.all(color: verify==false?Colors.red:MyColors.primary,width: 3),
                        image: DecorationImage(
                          image: FileImage(File(state.data!.path)),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }
                  return InkWell(
                      onTap: () {},
                      child: Container(
                        width: 100.r,
                        height: 100.r,
                        decoration: BoxDecoration(
                          // border: Border.all(color: verify==false?Colors.red:MyColors.primary,width: 3),
                            shape: BoxShape.circle,
                            color: context.colors.disableGray),
                        child: CachedImage(
                          fit: BoxFit.cover,
                          haveRadius: false,
                          boxShape: BoxShape.circle,
                          placeHolder: Image.asset(Res.profile,height:120.r ,width: 120.r,),
                          url: "",
                        ),
                      ));
                },
              ),
              Positioned(
                top: 4,
                right: 0,
                child: InkWell(
                  onTap: () =>moreController.getImage(context),

                  child: Container(
                    padding: const EdgeInsets.all(5).r,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.colors.white,
                        border: Border.all(color: context.colors.disableGray,)
                    ),
                    child: Icon(
                      Icons.camera_alt,
                      size: 17.sp,
                      color: context.colors.primary,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
        Gaps.vGap15,
        Text(
          "USER",
          style: AppTextStyle.s16_w400(color: context.colors.black),
        ),
        Gaps.vGap10,

        Text(
          "+945837465222",
          style: AppTextStyle.s16_w400(color: context.colors.black),
        ),
      ],
    );
  }
}
