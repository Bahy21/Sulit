part of 'blog_details_imports.dart';

class BlogDetails extends StatefulWidget {
  final Blog blog;

  const BlogDetails({Key? key, required this.blog}) : super(key: key);

  @override
  State<BlogDetails> createState() => _BlogDetailsState();
}

class _BlogDetailsState extends State<BlogDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: 'Blog Details',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedImage(
            url: widget.blog.banner,
            height: 200,
            width: MediaQuery.of(context).size.width,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 15.r),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    widget.blog.title,
                    style: AppTextStyle.s16_w500(color: context.colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    widget.blog.category,
                    style: AppTextStyle.s14_w800(color: context.colors.black),
                  ),
                ),
                Html(
                  data: widget.blog.description,
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
                Row(
                  children: [
                    Text(
                      "0 comments",
                      style: AppTextStyle.s14_w800(color: context.colors.black),
                    ),
                    const Spacer(),
                    Text(
                      "Sort by",
                      style: AppTextStyle.s14_w800(color: context.colors.black),
                    ),
                    PopupMenuButton(
                      itemBuilder: (BuildContext bc) => [
                        PopupMenuItem(
                          value: 1,
                          height: 30,
                          child: Text(
                            "Newest",
                            style: AppTextStyle.s9_w400(color: context.colors.black),
                          ),
                        ),
                       const PopupMenuItem(
                          value: 2,
                          height: 30,
                          child: Text(
                            "Oldest",
                            style:  AppTextStyle.s9_w400(color: Colors.red),
                          ),
                        ),
                      ],
                      child: Container(
                        margin: const EdgeInsets.only(left: 10),
                        padding: const EdgeInsets.all(5).r,
                        decoration: BoxDecoration(
                          color: context.colors.greyWhite,
                        ),
                        child: Text(
                          "Oldest",
                          style: AppTextStyle.s14_w800(
                            color: context.colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
