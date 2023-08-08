part of 'profile_imports.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final ProfileController controller = ProfileController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Manage Profile",),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
        children: [
          BuildProfileFormFields(profileController: controller,),
          const BuildProfileButton()
        ],
      ),
    );
  }
}
