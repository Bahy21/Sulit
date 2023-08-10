part of 'home_main_widgets_imports.dart';

class BuildDeals extends StatelessWidget {
  final List<FlashSale> flashSales;

  const BuildDeals({super.key, required this.flashSales});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        flashSales.length,
        (index) => Expanded(
          child: BuildDealsItem(
            flashSaleModel: flashSales[index],
            onTap: () {
              AutoRouter.of(context)
                  .push(SaleDetailsRoute(dealId: flashSales[index].id));
            },
          ),
        ),
      ),
    );
  }
}
