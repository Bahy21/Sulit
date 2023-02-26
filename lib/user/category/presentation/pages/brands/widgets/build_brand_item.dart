part of 'brands_widgets_imports.dart';

class BuildBrandItem extends StatelessWidget {
  const BuildBrandItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: context.colors.greyWhite, blurRadius: 1, spreadRadius: 1)
          ]),
      child: CachedImage(
          fit: BoxFit.cover,
          haveRadius: true,
          borderRadius: BorderRadius.circular(5).r,
          url:
              "https://deadline.com/wp-content/uploads/2022/08/Netflix_Symbol_logo.jpg"),
    );
  }
}
