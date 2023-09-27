import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthTextField extends ConsumerStatefulWidget {
  const AuthTextField({
    @required this.labelText,
    @required this.textEditingController,
    super.key,
  });
  final TextEditingController? textEditingController;
  final String? labelText;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends ConsumerState<AuthTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 64,
        decoration: BoxDecoration(
          color: Theme.of(context).inputDecorationTheme.fillColor,
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          /* boxShadow: [
            BoxShadow(
              color: Theme.of(context).inputDecorationTheme.fillColor!,
              offset: const Offset(1, 1),
              blurRadius: 8,
              blurStyle: BlurStyle.inner,
            ),
            BoxShadow(
              color: Theme.of(context).inputDecorationTheme.fillColor!,
              offset: const Offset(-1, -1),
              blurRadius: 8,
              blurStyle: BlurStyle.inner,
            ),
          ], */
        ),
        child: TextField(
          controller: widget.textEditingController,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            label: Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: Text(
                widget.labelText!,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
            alignLabelWithHint: true,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 50,
            ),
            isDense: true,
            border: const OutlineInputBorder(borderSide: BorderSide.none),
            filled: true,
            fillColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
