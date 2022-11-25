import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:task_preview_tech/domain/models/data_model.dart';


class SQFLiteDatabaseHelper {
  static const _databaseName = "SQLFLite.db";

  static const sQFLITETable = 'SQLFLiteGitRepos';

  SQFLiteDatabaseHelper._privateConstructor();

  static final SQFLiteDatabaseHelper instance = SQFLiteDatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(path, version: migrationScripts.length, onCreate: _onCreate, onUpgrade: _onUpgrade);
  }

  Map<int, String> migrationScripts = {
    1: '''
    CREATE TABLE $sQFLITETable(
        srn INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        name TEXT,
        description TEXT,
        language TEXT,
        watchers int,
        open_issues int
        )
        '''
  };

  Future _onCreate(Database db, int version) async {
    try {
      for (int i = 1; i <= migrationScripts.length; i++) {
        await db.execute(migrationScripts[i].toString());
      }
    } catch (e) {
     //
    }
  }

  FutureOr<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    for (int i = oldVersion + 1; i <= newVersion; i++) {
      await db.execute(migrationScripts[i].toString());
    }
  }

}
