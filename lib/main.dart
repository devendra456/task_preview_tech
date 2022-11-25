import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_preview_tech/app/core/di.dart';
import 'package:task_preview_tech/data/network/network_info.dart';

import 'app/my_app.dart';
import 'data/data_source/git_repos_local_data_source.dart';
import 'infrastructure/navigation/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var initialRoute = await Routes.initialRoute;
  await GetStorage.init();
  await setup();
  final netInfo = getIt.get<NetworkInfo>();
  if(await netInfo.isConnected()){
    final repo = getIt.get<GitReposLocalDataSource>();
    await repo.clearAllData();
  }
  runApp(MyApp(initialRoute));
}

