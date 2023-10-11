part of '../home_view.dart';

class _HomeHorizontalCard extends StatelessWidget {
  const _HomeHorizontalCard({@required this.collectionSize});
  final double? collectionSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          HomeImageCard(
            color: Colors.white,
            imageUrl: context.platformBrightness == Brightness.dark
                ? ImageConstant.hoodieDark.toPng
                : ImageConstant.hoodieLight.toPng,
          ),
          Positioned(
            left: 45,
            right: 0,
            top: collectionSize! / 5,
            child: HomeCardTitle(
              title: context.platformBrightness == Brightness.dark
                  ? StringConstant.menHatsTitle
                  : StringConstant.menHoodieTitle,
              titleColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
