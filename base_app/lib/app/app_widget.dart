import 'package:base_core/app/modules/core_module.dart';
import 'package:base_dependencies/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return ScreenUtilInit(
      designSize: const Size(320, 568),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, Widget? child) => MultiProvider(
        // ignore: always_specify_types
        providers: List.from(CoreModule.binds),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sample Micro Apps',
          routes: CoreModule.routes,
        ),
      ),
    );
  }
}
