// ignore_for_file: library_private_types_in_public_api
part of 'profile_imports.dart';

class Profile extends StatefulWidget {
  final Address? address ;
  const Profile({Key? key,  this.address}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late ProfileController controller;

  @override
  void initState() {
    controller = ProfileController(context, widget.address);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Manage Profile"),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 16,
        ).r,
        children: [
          BuildProfileImage(
            controller: controller,
          ),
          BuildProfileFormFields(
            controller: controller,
          ),
          BuildProfileButton(
            controller: controller,
            address: widget.address,
          )
        ],
      ),
    );
  }
}
