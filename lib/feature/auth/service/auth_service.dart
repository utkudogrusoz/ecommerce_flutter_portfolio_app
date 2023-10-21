import 'package:ecommerce_portolio_app/core/constants/url_constant.dart';
import 'package:ecommerce_portolio_app/core/utils/base_service.dart';
import 'package:flutter/material.dart';

class AuthService {
  final BaseService _baseService = BaseService();

  Future<int> authenticate({
    @required String? mail,
    @required String? password,
  }) async {
    final response = await _baseService.post(
      path: UrlConstant.loginUrl,
      body: {
        'email': mail,
        'password': password,
      },
    );

    return response.statusCode;
  }
}
