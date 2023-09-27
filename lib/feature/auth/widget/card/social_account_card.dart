import 'package:flutter/material.dart';

class SocialAccountCard extends StatelessWidget {
  const SocialAccountCard({@required this.iconName, super.key});
  final String? iconName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92,
      height: 64,
      decoration: BoxDecoration(
        color: Theme.of(context).inputDecorationTheme.fillColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(24),
        ),
        image: DecorationImage(
          image: AssetImage('assets/icons/${iconName!}'),
        ),
      ),
    );
  }
}
