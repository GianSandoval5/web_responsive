import 'package:core_dashboard/pages/authentication/register_page.dart';
import 'package:core_dashboard/pages/authentication/sign_in_page.dart';
import 'package:core_dashboard/pages/entry_point.dart';
import 'package:flutter/material.dart';


class Routes {
  static const String entryPoint = '/';
  static const String signIn = '/sign-in';
  static const String register = '/register';
}

Map<String, WidgetBuilder> routerConfig = {
  Routes.entryPoint: (context) => const EntryPoint(),
  Routes.signIn: (context) => const SignInPage(),
  Routes.register: (context) => const RegisterPage(),
};