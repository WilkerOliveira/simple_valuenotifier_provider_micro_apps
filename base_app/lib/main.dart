import 'package:base_app/app/app_widget.dart';
import 'package:base_dependencies/main.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(
    const AppWidget(),
  );
}
