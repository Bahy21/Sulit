part of 'contact_us_imports.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final ContactUsController contactUsData = ContactUsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: 'Contact Us'),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
        children: [
          BuildContactUsFields(contactUsData: contactUsData),
          BuildContactUsButton(contactUsData: contactUsData)
        ],
      ),
    );
  }
}
