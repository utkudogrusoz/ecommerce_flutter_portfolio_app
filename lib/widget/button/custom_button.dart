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
        textStyle: Theme.of(context).textButtonTheme.style!.textStyle,
        shadowColor:
            MaterialStatePropertyAll(Theme.of(context).colorScheme.primary),
        maximumSize: const MaterialStatePropertyAll(Size(343, 48)),
        minimumSize: const MaterialStatePropertyAll(Size(343, 48)),
        backgroundColor:
            MaterialStatePropertyAll(Theme.of(context).colorScheme.primary),
      ),
      onPressed: () {
        onPressed!();
      },
      child: Text(
        text ?? '',
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
