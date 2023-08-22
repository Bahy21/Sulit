part of'tickets_details_imports.dart';

class TicketsDetails extends StatefulWidget {
  final int id;

  const TicketsDetails({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<TicketsDetails> createState() => _TicketsDetailsState();
}

class _TicketsDetailsState extends State<TicketsDetails> {
  late TicketsDetailsController controller;

  @override
  void initState() {
    controller = TicketsDetailsController(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BuildAddReplayButton(
        controller: controller, id: widget.id,
      ),
      appBar: const DefaultAppBar(title: "Ticket Details", showBack: true),
      body: BlocBuilder<GenericBloc<Ticket?>, GenericState<Ticket?>>(
        bloc: controller.ticketCubit,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Column(
              children: [
                BuildTicketDetailsItem(
                  ticket: state.data!,
                ),
                Visibility(
                  visible: state.data!.replies!.isNotEmpty,
                  replacement: Padding(
                    padding: EdgeInsets.only(
                      top: 300.h,
                    ),
                    child: Text(
                      "No replies found yet. ! ",
                      style: AppTextStyle.s12_w400(color: context.colors.grey),
                    ),
                  ),
                  child: Flexible(
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16).r,
                      itemBuilder: (context, index) => BuildReplayItem(
                        replyModel: state.data!.replies![index],
                      ),
                      itemCount: state.data!.replies!.length,
                    ),
                  ),
                ),
              ],
            );
          } else {
            return const BuildTicketsDetailsLoading();
          }
        },
      ),
    );
  }
}
