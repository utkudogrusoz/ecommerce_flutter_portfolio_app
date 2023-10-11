part of '../home_view.dart';

class _HomeSummerSaleCard extends StatelessWidget {
  const _HomeSummerSaleCard();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          HomeImageCard(
            color: context.colorScheme.secondary,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: HomeCardTitle(
                title: StringConstant.summerSaleTitle,
                titleColor: context.colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
