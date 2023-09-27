import 'package:ecommerce_portolio_app/core/extensions/context_extension.dart';
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
        color: context.inputTheme.fillColor,
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
