part of'conversations_imports.dart';
class Conversations extends StatefulWidget {
  const Conversations({Key? key}) : super(key: key);

  @override
  State<Conversations> createState() => _ConversationsState();
}

class _ConversationsState extends State<Conversations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Conversations"),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 16).r,
          itemCount: 3,
          itemBuilder: (context,index)=>BuildConversationItem()),
    );
  }
}
