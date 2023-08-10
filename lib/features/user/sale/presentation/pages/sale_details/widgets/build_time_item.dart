part of 'sale_details_w_imports.dart';

class BuildTimeItem extends StatelessWidget {
  final String time ;
  const BuildTimeItem({Key? key, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        time,
        style:  const AppTextStyle.s18_w700(color: Colors.white)
      ),
    );
  }
}
