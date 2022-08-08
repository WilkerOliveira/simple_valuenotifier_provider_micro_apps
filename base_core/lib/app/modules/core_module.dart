// ignore_for_file: avoid_classes_with_only_static_members, always_specify_types

import 'package:flutter/material.dart';
import 'package:help_app/main.dart';
import 'package:login_app/main.dart';

abstract class CoreModule {
  static final List<dynamic> binds = [
    ...LoginAppModule.binds,
    ...HelpAppModule.binds,
  ];

  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    ...LoginAppModule.routes,
    ...HelpAppModule.routes,
  };
}
