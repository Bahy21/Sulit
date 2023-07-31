part of 'downloads_import.dart';

class Downloads extends StatefulWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  State<Downloads> createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  final DownloadsController controller = DownloadsController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DefaultAppBar(title: "Downloads", showBack: true),
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
          itemBuilder: (context, index) => const BuildDownloadsItem(),
          itemCount: 5,
        ));
  }
}
