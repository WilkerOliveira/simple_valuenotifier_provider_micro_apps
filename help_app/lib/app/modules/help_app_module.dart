// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';
import 'package:help_app/app/modules/features/help/help_module.dart';

class HelpAppModule {
  static final List<dynamic> binds = <dynamic>[
    ...HelpModule.getBinds(),
  ];

  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    ...HelpModule.getRoutes(),
  };
}
