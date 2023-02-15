part of'product_details_widgets_imports.dart';
class BuildShareItem extends StatelessWidget {
  final String image;
  const BuildShareItem({Key? key, required this.image,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.r,
      height: 40.r,
      padding: const EdgeInsets.all(3).r,
      margin: const EdgeInsetsDirectional.only(end: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: context.colors.greyWhite, blurRadius: 1, spreadRadius: 1)
        ],
        borderRadius: BorderRadius.circular(5).r,
        color:context.colors.white,

      ),
      child: SvgPicture.asset(image)
    );
  }
}
