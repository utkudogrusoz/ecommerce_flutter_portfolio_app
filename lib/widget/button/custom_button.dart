import 'package:ecommerce_portolio_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({this.text, this.onPressed, super.key});
  final String? text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll(4),
        textStyle: context.textButtonTheme.style!.textStyle,
        shadowColor:
            MaterialStatePropertyAll(Theme.of(context).colorScheme.primary),
        maximumSize: const MaterialStatePropertyAll(Size(343, 48)),
        minimumSize: const MaterialStatePropertyAll(Size(343, 48)),
        backgroundColor: MaterialStatePropertyAll(context.colorScheme.primary),
      ),
      onPressed: () {
        onPressed!();
      },
      child: Text(
        text ?? '',
        style: context.textTheme.titleSmall,
      ),
    );
  }
}
