part of'compare_widgets_imports.dart';
class BuildPaddedText extends StatelessWidget {
  final String? text;
  final TextAlign align ;
  final Color color;
  final bool? isImage;
  const  BuildPaddedText( { this.text,  this.align= TextAlign.center,this.color= Colors.black,  this.isImage=false}) ;

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:const  EdgeInsets.symmetric(vertical: 5,horizontal: 5).r,
      child: !isImage!?Text(
      text??"",
      textAlign: align,
      style: AppTextStyle.s10_w400(
    color: color,
    ),

    ):Image.asset(Res.suliitLogo,height: 40.r,width: 40.r,));
  }
}