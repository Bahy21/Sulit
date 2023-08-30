part of 'bolg_details_widgets_imports.dart';

class BuildBlogDetailsInfo extends StatelessWidget {
  final Blog blog;

  const BuildBlogDetailsInfo({super.key, required this.blog});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: Dimens.paddingVertical5PX,
          child: Text(
            blog.title,
            style: AppTextStyle.s16_w500(color: context.colors.black),
          ),
        ),
        Text(
          blog.category,
          style: AppTextStyle.s14_w800(color: context.colors.black),
        ),
        Html(
          data: blog.description,
          style: {
            "body": Style(
              color: Colors.black,
              margin: Margins.zero,
              fontSize: FontSize(
                12,
              ),
              lineHeight: const LineHeight(2),
              fontWeight: FontWeight.w400,
            ),
          },
        ),
      ],
    );
  }
}
