part of '../home_view.dart';

class _HomeBlackCard extends StatelessWidget {
  const _HomeBlackCard();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          HomeImageCard(
            color: Colors.white,
            imageUrl: 'black.png',
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 32,
              ),
              child: HomeCardTitle(
                title: 'Black',
                titleColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
