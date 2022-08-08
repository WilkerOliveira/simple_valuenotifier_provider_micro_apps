// ignore_for_file: avoid_classes_with_only_static_members

import 'package:base_commons/app/modules/routes/common_routes.dart';
import 'package:base_dependencies/main.dart';
import 'package:flutter/material.dart';
import 'package:help_app/app/modules/features/help/data/datasources/help_datasource.dart';
import 'package:help_app/app/modules/features/help/data/repositories/help_repository_impl.dart';
import 'package:help_app/app/modules/features/help/domain/repositories/help_repository.dart';
import 'package:help_app/app/modules/features/help/domain/usecases/help_usecase.dart';
import 'package:help_app/app/modules/features/help/presentation/controllers/help_controller.dart';
import 'package:help_app/app/modules/features/help/presentation/screens/help_screen.dart';

class HelpModule {
  static List<dynamic> getBinds() => <dynamic>[
        ..._getDatabase(),
        ..._getDatasources(),
        ..._getRepositories(),
        ..._getUsecases(),
        ..._getControllers(),
      ];

  static List<Provider<dynamic>> _getDatabase() => <Provider<dynamic>>[];

  static List<Provider<dynamic>> _getDatasources() => <Provider<dynamic>>[
        Provider<HelpDatasource>(
            create: (BuildContext context) => HelpDatasourceImpl()),
      ];

  static List<Provider<dynamic>> _getRepositories() => <Provider<dynamic>>[
        Provider<HelpRepository>(
            create: (BuildContext context) =>
                HelpRepositoryImpl(context.read<HelpDatasource>())),
      ];

  static List<Provider<dynamic>> _getUsecases() => <Provider<dynamic>>[
        Provider<HelpUsecase>(
            create: (BuildContext context) =>
                HelpUsecaseImpl(context.read<HelpRepository>())),
      ];

  static List<ChangeNotifierProvider<dynamic>> _getControllers() =>
      <ChangeNotifierProvider<dynamic>>[
        ChangeNotifierProvider<HelpController>(
            create: (BuildContext context) =>
                HelpController(context.read<HelpUsecase>())),
      ];

  static Map<String, WidgetBuilder> getRoutes() => <String, WidgetBuilder>{
        helpScreen: (BuildContext context) => const HelpScreen()
      };
}
