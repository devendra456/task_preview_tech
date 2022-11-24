import 'dart:convert';

import 'package:task_preview_tech/app/core/di.dart';
import 'package:task_preview_tech/domain/models/data_model.dart';

abstract class GitReposLocalDataSource {
  Future<List<DataModel>> getSavedRepos();

  Future<void> cacheGitRepos(List<DataModel> listOfData);
}

class GitReposLocalDataSourceImpl implements GitReposLocalDataSource {

  GitReposLocalDataSourceImpl();

  @override
  Future<List<DataModel>> getSavedRepos() async{
    return <DataModel>[];
  }

  @override
  Future<void> cacheGitRepos(List<DataModel> listOfData) async{

  }
}
