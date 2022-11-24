import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_preview_tech/app/theme/theme_manager.dart';

import '../infrastructure/navigation/navigation.dart';

class MyApp extends StatelessWidget {
  final String initialRoute;

  const MyApp(this.initialRoute, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.focusScope?.unfocus();
      },
      child: GetMaterialApp(
        initialRoute: initialRoute,
        getPages: Nav.routes,
        title: "Demo",
        theme: getApplicationTheme(),
      ),
    );
  }
}
