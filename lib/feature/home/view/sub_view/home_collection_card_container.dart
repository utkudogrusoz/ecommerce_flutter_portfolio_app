part of '../home_view.dart';

class _HomeCollectionCardContainer extends StatelessWidget {
  const _HomeCollectionCardContainer({
    this.color,
    this.imageUrl,
    this.child,
  });
  final Color? color;
  final Widget? child;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    const String _baseAsset = 'assets/images/';
    return Container(
      decoration: imageUrl == null
          ? BoxDecoration(color: color)
          : BoxDecoration(
              color: color,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  _baseAsset + imageUrl!,
                ),
              ),
            ),
      child: child ?? Container(),
    );
  }
}
