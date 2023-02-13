part of 'more_imports.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  MoreController moreController = MoreController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
        children: [
          BuildMoreHeader(
            moreController: moreController,
          ),
          Gaps.vGap32,
          BuildMoreItem(
            title: 'DashBoard',
            icon: Icons.home_outlined,
            onTap: () => AutoRouter.of(context).push(const DashBoardRoute()),
          ),
           BuildMoreItem(
            title: 'Purchased History',
            icon: Icons.file_copy_outlined,
             onTap: () => AutoRouter.of(context).push(const PurchasedHistoryRoute()),
          ),
           BuildMoreItem(
            title: 'Downloads',
            icon: Icons.download,
             onTap: () => AutoRouter.of(context).push(const DownloadsRoute()),

          ),
           BuildMoreItem(
            title: 'WishList',
            icon: Icons.favorite_border,
             onTap: () => AutoRouter.of(context).push(const WishlistRoute()),

          ),
           BuildMoreItem(
            title: 'Compare',
            icon: Icons.compare_arrows,
            onTap: (){},

          ),
           BuildMoreItem(
            title: 'Conversation',
            icon: Icons.chat,
             onTap: () => AutoRouter.of(context).push(const ConversationsRoute()),

           ),
           BuildMoreItem(
            title: 'My Wallet',
            icon: Icons.monetization_on_outlined,
             onTap: () => AutoRouter.of(context).push(const MyWalletRoute()),

          ),
          BuildMoreItem(
            title: 'Support Tickets',
            icon: Icons.airplane_ticket_outlined,
            onTap: () => AutoRouter.of(context).push(const SupportTicketsRoute()),

          ),
           BuildMoreItem(
            title: 'Manage Profile',
            icon: Icons.person_2_outlined,
            onTap: (){},

          ),
        ],
      ),
    );
  }
}
