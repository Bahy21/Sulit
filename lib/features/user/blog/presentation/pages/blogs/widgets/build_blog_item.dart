part of 'blogs_w_imports.dart';

class BuildBlogItem extends StatelessWidget {
  final Blog blog ;
  const BuildBlogItem({Key? key, required this.blog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(BlogDetailsRoute(blog : blog)),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.r, vertical: 10),
        decoration: BoxDecoration(
            border: Border.all(color: context.colors.greyWhite),
            borderRadius: BorderRadius.circular(15),
            color: context.colors.white,
            boxShadow: [
              BoxShadow(
                color: context.colors.greyWhite,
                spreadRadius: 1,
                blurRadius: 1,
              )
            ]),
        padding: const EdgeInsets.all(10).r,
        child: Row(
          children: [
            CachedImage(
              url: blog.banner,
              width: 100.w,
              height: 100.h,
              borderRadius: BorderRadius.circular(25),
            ),
            Gaps.hGap12,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    blog.title,
                    style: AppTextStyle.s14_w800(
                        color: context.colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    blog.slug,
                    style: AppTextStyle.s14_w800(
                        color: context.colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    blog.category,
                    style: AppTextStyle.s14_w800(
                        color: context.colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    blog.shortDescription,
                    style: AppTextStyle.s14_w800(
                        color: context.colors.black),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
