import 'package:ecommerce_portolio_app/core/initialize/navigation/navigation_route.dart';
import 'package:ecommerce_portolio_app/core/initialize/navigation/navigation_service.dart';
import 'package:ecommerce_portolio_app/core/theme/themes.dart';
import 'package:ecommerce_portolio_app/feature/auth/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce Portfolio',
      theme: ThemeClass.lightTheme,
      darkTheme: ThemeClass.darkTheme,
      themeMode: ThemeMode.system,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
      home: const LoginView(),
    );
  }
}
