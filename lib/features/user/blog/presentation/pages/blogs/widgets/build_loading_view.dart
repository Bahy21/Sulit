part of 'blogs_w_imports.dart';

class BuildLoadingView extends StatelessWidget {
  const BuildLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        5,
            (index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 10.r, vertical: 10),
          decoration: BoxDecoration(
              border: Border.all(color: context.colors.greyWhite),
              borderRadius: BorderRadius.circular(15),
              color: context.colors.white,
              boxShadow: [
                BoxShadow(
                  color: context.colors.greyWhite,
                  spreadRadius: 1,
                  blurRadius: 1,
                )
              ]),
          padding: const EdgeInsets.all(10).r,
          child: Row(
            children: [
              BuildShimmerView(
                child: CachedImage(
                  url: "",
                  width: 100.w,
                  height: 100.h,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              Gaps.hGap12,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: BuildShimmerView(
                      width: 100,
                      height: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: BuildShimmerView(
                      width: 100,
                      height: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: BuildShimmerView(
                      width: 100,
                      height: 5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: BuildShimmerView(
                      width: 100,
                      height: 5,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
