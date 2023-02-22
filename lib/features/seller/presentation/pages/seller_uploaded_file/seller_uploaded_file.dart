part of'seller_uploaded_file_imports.dart';
class SellerUploadedFile extends StatefulWidget {
  const SellerUploadedFile({Key? key}) : super(key: key);

  @override
  State<SellerUploadedFile> createState() => _SellerUploadedFileState();
}

class _SellerUploadedFileState extends State<SellerUploadedFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DefaultAppBar(title: "Uploaded Files", showBack: true),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
          child: Column(
            children: [
              BuildUploadNewFile(),
              BuildActionButtons(),
              Flexible(
                child: GridView(
                  padding: const EdgeInsets.symmetric(vertical: 20, ).r,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.r,
                      mainAxisSpacing: 8.r,
                      childAspectRatio: 10 / 10),
                  children: List.generate(11, (index) => const BuildFileItem()),
                ),
              ),
            ],
          ),
        ),);
  }
}
