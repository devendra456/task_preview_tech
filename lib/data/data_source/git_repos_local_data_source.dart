import 'dart:convert';

import 'package:sqflite/sqflite.dart';
import 'package:task_preview_tech/app/core/di.dart';
import 'package:task_preview_tech/domain/models/data_model.dart';

import '../helper/sqflite_database_helper.dart';

abstract class GitReposLocalDataSource {
  Future<List<DataModel>> getSavedRepos();

  Future<void> cacheGitRepos(List<DataModel> listOfData);

  Future<void> clearAllData();
}

class GitReposLocalDataSourceImpl implements GitReposLocalDataSource {
  final Database? database;
  GitReposLocalDataSourceImpl(this.database);

  @override
  Future<List<DataModel>> getSavedRepos() async{
    List<DataModel> userDetails = [];
    try{
      final userMapData =
          await database?.query(SQFLiteDatabaseHelper.sQFLITETable);
      if (userMapData != null) {
        for (var element in userMapData) {
          userDetails.add(DataModel.fromJson(element));
        }
        return userDetails;
      }else{
        throw "Receiving null on Database";
      }
    }catch(e){
      rethrow;
    }
  }

  @override
  Future<void> cacheGitRepos(List<DataModel> listOfData) async{
    for (var element in listOfData) {
      await database?.insert(SQFLiteDatabaseHelper.sQFLITETable, element.toJson());
    }
  }

  @override
  Future<void> clearAllData() async{
    await database?.delete(SQFLiteDatabaseHelper.sQFLITETable);
  }
}
