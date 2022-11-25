import 'dart:convert';

import 'package:sqflite/sqflite.dart';
import 'package:task_preview_tech/app/core/di.dart';

import '../../domain/entity/git_repos_entity.dart';
import '../helper/sqflite_database_helper.dart';
import '../models/data_model.dart';

abstract class GitReposLocalDataSource {
  Future<List<DataModel>> getSavedRepos(int pageNumber);

  Future<void> cacheGitRepos(List<DataModel> listOfData);

  Future<void> clearAllData();
}

class GitReposLocalDataSourceImpl implements GitReposLocalDataSource {
  final Database? database;

  GitReposLocalDataSourceImpl(this.database);

  @override
  Future<List<DataModel>> getSavedRepos(int pageNumber) async {
    List<GitReposEntity> userDetails = [];
    try {
      final userMapData = await database?.query(
        SQFLiteDatabaseHelper.sQFLITETable,
      );
      if (userMapData != null) {
        for (var element in userMapData) {
          userDetails.add(GitReposEntity.fromJson(element));
        }
        final list = modelToEntity(userDetails);
        return list;
      } else {
        throw "Receiving null on Database";
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> cacheGitRepos(List<DataModel> listOfData) async {
    final list = entityToModel(listOfData);
    for (var element in list) {
      try {
        await database?.insert(
          SQFLiteDatabaseHelper.sQFLITETable,
          element.toJson(),
        );
      } catch (e) {
        rethrow;
      }
    }
  }

  @override
  Future<void> clearAllData() async {
    await database?.delete(SQFLiteDatabaseHelper.sQFLITETable);
  }
}

List<DataModel> modelToEntity(List<GitReposEntity> model) {
  final List<DataModel> list = [];
  for (var element in model) {
    list.add(DataModel(
      name: element.name,
      language: element.language,
      description: element.description,
      watchers: element.watchers,
      openIssues: element.openIssues,
    ));
  }
  return list;
}

List<GitReposEntity> entityToModel(List<DataModel> model) {
  final List<GitReposEntity> list = [];
  for (var element in model) {
    list.add(GitReposEntity(
      name: element.name ?? "",
      description: element.description ?? "",
      language: element.language ?? "",
      openIssues: element.openIssues ?? 0,
      watchers: element.watchers ?? 0,
    ));
  }
  return list;
}
