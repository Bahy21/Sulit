part of'notifications_imports.dart';
class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Conversations",showBack: false,),
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 16).r,
          itemCount: 3,
          itemBuilder: (context,index)=>const BuildNotificationsItem()),
    );
  }
}
