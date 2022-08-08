// ignore_for_file: avoid_classes_with_only_static_members

import 'package:base_commons/app/modules/routes/common_routes.dart';
import 'package:base_dependencies/main.dart';
import 'package:flutter/material.dart';
import 'package:login_app/app/modules/features/login/presentation/screens/login_screen.dart';

class LoginModule {
  static List<Provider<dynamic>> getBinds() => <Provider<dynamic>>[
        ..._getDatabase(),
        ..._getDatasources(),
        ..._getRepositories(),
        ..._getUsecases(),
        ..._getControllers(),
      ];

  static List<Provider<dynamic>> _getDatabase() => <Provider<dynamic>>[];

  static List<Provider<dynamic>> _getDatasources() => <Provider<dynamic>>[];

  static List<Provider<dynamic>> _getRepositories() => <Provider<dynamic>>[];

  static List<Provider<dynamic>> _getUsecases() => <Provider<dynamic>>[];

  static List<Provider<dynamic>> _getControllers() => <Provider<dynamic>>[];

  static Map<String, WidgetBuilder> getRoutes() => <String, WidgetBuilder>{
        loginScreen: (BuildContext context) => const LoginScreen()
      };
}
