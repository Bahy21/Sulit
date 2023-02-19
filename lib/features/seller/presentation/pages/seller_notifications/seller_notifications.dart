part of 'seller_notifications_imports.dart';

class SellerNotifications extends StatefulWidget {
  const SellerNotifications({Key? key}) : super(key: key);

  @override
  _SellerNotificationsState createState() => _SellerNotificationsState();
}

class _SellerNotificationsState extends State<SellerNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Notifications"),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
        itemCount: 4,
        itemBuilder: (_, index) => const BuildSellerNotificationsItem(),
      ),
    );
  }
}
