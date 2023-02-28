part of 'seller_uploaded_file_widgets_imports.dart';

class BuildFileDetailsSheet extends StatelessWidget {
  const BuildFileDetailsSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 390.h,
      decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20).r, topRight: Radius.circular(20).r)),
      padding: const EdgeInsets.only(top: 20, right: 20, left: 20).r,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "File Info",
                style: AppTextStyle.s16_w500(color: context.colors.black),
              ),
              InkWell(
                  onTap: () => AutoRouter.of(context).pop(),
                  child: Icon(
                    Icons.clear,
                    color: context.colors.darkPurple,
                  )),
            ],
          ),
          Gaps.line(context.colors.greyWhite, 20.h),
          BuildFileDetailsCustomItem(
            header: "File Name",
            content:
                "tequirowijfdfrtyuiytryutyyutityutyrutitslkjavbksdbvklabdva",
          ),
          BuildFileDetailsCustomItem(
            header: "File Type",
            content: "document",
          ),
          BuildFileDetailsCustomItem(
            header: "File Size",
            content: "29.99 KB",
          ),
          BuildFileDetailsCustomItem(
            header: "Uploaded At",
            content: "122/12/2033",
          ),
          DefaultButton(
              title: "Download ",
              width: 120.w,
              height: 25.h,
              fontSize: 10,
              color: context.colors.darkPurple,
              borderRadius: BorderRadius.circular(5).r,
              margin: const EdgeInsets.symmetric(vertical: 10).r,
              onTap: () {}),
        ],
      ),
    );
  }
}
