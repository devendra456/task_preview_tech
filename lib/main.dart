import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_preview_tech/app/core/di.dart';

import 'app/my_app.dart';
import 'infrastructure/navigation/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var initialRoute = await Routes.initialRoute;
  await GetStorage.init();
  await setup();
  runApp(MyApp(initialRoute));
}

