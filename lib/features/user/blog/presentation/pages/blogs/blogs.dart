part of 'blogs_imports.dart';

class Blogs extends StatefulWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  State<Blogs> createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  late BlogsController controller;

  @override
  void initState() {
    controller = BlogsController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: "Blogs",
      ),
      body: BlocBuilder<GenericBloc<List<Blog>>, GenericState<List<Blog>>>(
        bloc: controller.blogsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Visibility(
              visible: state.data.isNotEmpty,
              replacement: Text(
                "No Blogs Yet",
                style: AppTextStyle.s14_w400(color: context.colors.black),
              ),
              child: ListView(
                children: List.generate(
                  state.data.length,
                  (index) => BuildBlogItem(
                    blog: state.data[index],
                  ),
                ),
              ),
            );
          } else {
            return const BuildLoadingView();
          }
        },
      ),
    );
  }
}
