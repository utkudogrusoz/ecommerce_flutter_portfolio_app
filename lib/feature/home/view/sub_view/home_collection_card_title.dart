part of '../home_view.dart';

class _HomeCollectionCardTitle extends StatelessWidget {
  const _HomeCollectionCardTitle({this.title, this.titleColor});
  final String? title;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: TextStyle(
        color: titleColor,
        fontSize: 34,
        fontWeight: FontWeight.bold,
        height: 1,
        fontFamily: 'Metropolis',
      ),
    );
  }
}
