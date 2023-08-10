part of 'blogs_imports.dart';

class BlogsController {
  final GenericBloc<List<Blog>> blogsBloc = GenericBloc([]);

  BlogsController() {
    getBlogs(refresh: false);
    getBlogs();
  }

  Future<void> getBlogs({bool refresh = true}) async {
    return await GetBlogs().call(refresh).then(
          (value) => blogsBloc.onUpdateData(
            value,
          ),
        );
  }
}
