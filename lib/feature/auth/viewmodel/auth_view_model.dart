import 'package:ecommerce_portolio_app/core/constants/navigation_constant.dart';
import 'package:ecommerce_portolio_app/core/initialize/navigation/navigation_service.dart';
import 'package:ecommerce_portolio_app/feature/auth/service/auth_service.dart';

import 'package:flutter/material.dart';

class AuthViewModel extends ChangeNotifier {
  final TextEditingController? loginTextEditingController =
      TextEditingController();
  final TextEditingController? passwordTextEditingController =
      TextEditingController();

  final AuthService _authService = AuthService();

  bool passwordVisibility = true;

  Future<void> loginAccount({BuildContext? context}) async {
    // ignore: omit_local_variable_types
    final int statusCode = await _authService.authenticate(
      mail: loginTextEditingController!.text,
      password: passwordTextEditingController!.text,
    );
    print(loginTextEditingController!.text);
    print(passwordTextEditingController!.text);

    if (statusCode == 200) {
      await NavigationService.instance.navigateToPage(
        path: NavigationConstants.homeView,
        data: loginTextEditingController!.text,
      );
    } else {
      print('Hata var');
    }
  }

  void changePasswordVisibility() {
    if (passwordVisibility == true) {
      passwordVisibility = false;
    } else {
      passwordVisibility = true;
    }
    notifyListeners();
  }
}
