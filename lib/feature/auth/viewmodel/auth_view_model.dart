import 'package:ecommerce_portolio_app/core/constants/navigation_constant.dart';
import 'package:ecommerce_portolio_app/core/initialize/navigation/navigation_service.dart';
import 'package:flutter/material.dart';

class AuthViewModel extends ChangeNotifier {
  final TextEditingController? loginTextEditingController =
      TextEditingController();
  final TextEditingController? passwordTextEditingController =
      TextEditingController();

  void loginAccount({BuildContext? context}) {
    if (loginTextEditingController!.text != '' &&
        passwordTextEditingController!.text != '') {
      NavigationService.instance.navigateToPage(
        path: NavigationConstants.homeView,
        data: loginTextEditingController!.text,
      );
    }
  }
}
