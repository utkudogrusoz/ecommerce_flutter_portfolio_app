import 'package:ecommerce_portolio_app/feature/home/view/home_view.dart';
import 'package:flutter/material.dart';

class AuthViewModel extends ChangeNotifier {
  final TextEditingController? loginTextEditingController =
      TextEditingController();
  final TextEditingController? passwordTextEditingController =
      TextEditingController();

  void loginAccount({BuildContext? context}) {
    if (loginTextEditingController!.text != '' &&
        passwordTextEditingController!.text != '') {
      Navigator.push(
        context!,
        MaterialPageRoute(
          builder: (context) => const HomeView(),
        ),
      );
    }
  }
}
