part of 'splash_imports.dart';

class SplashController {
  void manipulateSaveData(BuildContext context) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var userStr = preferences.getString("user");
    await Future.delayed( const Duration(seconds: 1),() {
      AutoRouter.of(context).push( LoginRoute());
    },);
  }
}