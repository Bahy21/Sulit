part of 'notifications_imports.dart';

class Notifications extends StatefulWidget {
  final HomeController homeController;

  const Notifications({Key? key, required this.homeController})
      : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildSearchAppBar(homeController: widget.homeController),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
        itemCount: 3,
        itemBuilder: (context, index) => const BuildNotificationsItem(),
      ),
    );
  }
}
