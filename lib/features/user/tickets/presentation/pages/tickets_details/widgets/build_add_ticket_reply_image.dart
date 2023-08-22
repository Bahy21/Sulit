part of 'tickets_details_widgets_imports.dart';

class BuildAddTicketReplyImage extends StatelessWidget {
  final TicketsDetailsController controller;

  const BuildAddTicketReplyImage({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      alignment: AlignmentDirectional.centerStart,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10).r,
            child: const Text(
              "Images",
              style: AppTextStyle.s12_w400(color: Colors.black),
            ),
          ),
          BlocBuilder<GenericBloc<List<File>>, GenericState<List<File>>>(
            bloc: controller.imagesCubit,
            builder: (context, state) {
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      controller.imagesCubit.state.data.length,
                      (index) => Container(
                        height: 60,
                        width: 60,
                        margin: EdgeInsets.only(left: 5.r),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                          image: DecorationImage(
                            image: FileImage(state.data[index]),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => controller.addImages(context),
                      child: Container(
                        height: 60,
                        width: 60,
                        margin:
                            EdgeInsetsDirectional.only(start: 5.r, end: 5.r),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15.r,
                          ),
                          color: context.colors.grey.withOpacity(
                            0.1,
                          ),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 15,
                          color: context.colors.blackOpacity,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
