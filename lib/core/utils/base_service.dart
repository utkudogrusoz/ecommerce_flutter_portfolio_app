import 'dart:convert';

import 'package:ecommerce_portolio_app/core/constants/url_constant.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

final class BaseService {
  Future<Response> post({
    @required String? path,
    @required Object? body,
  }) async {
//    final url = Uri.http(UrlConstant.instance.baseUrl, path!);
final url = Uri.http(UrlConstant.baseUrl, path!);
    print(url);

    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(body),
    );
    return response;
  }
}
