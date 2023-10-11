part of '../home_view.dart';

class _HomeCollectionCardContainer extends StatelessWidget {
  const _HomeCollectionCardContainer({
    this.color,
    this.imageUrl,
    this.homeCollectionTitle,
  });
  final Color? color;
  final String? imageUrl;
  final String? homeCollectionTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          HomeImageCard(
            color: Colors.white,
            imageUrl:
                context.platformBrightness == Brightness.dark
                    ? ImageConstant.collectionDark.toPng
                    : ImageConstant.collectionLight.toPng,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: HomeCardTitle(
                title: homeCollectionTitle,
                titleColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
