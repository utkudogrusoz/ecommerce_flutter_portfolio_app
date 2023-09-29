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
                ? 'hoodie_dark.png'
                : 'hoodie.png',
          ),
          Positioned(
            left: 45,
            right: 0,
            top: collectionSize! / 5,
            child: HomeCardTitle(
              title:
                  "Men's ${context.platformBrightness == Brightness.dark ? 'hats' : 'hoodies'}",
              titleColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
