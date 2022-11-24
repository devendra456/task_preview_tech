import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_preview_tech/domain/models/data_model.dart';
import 'package:task_preview_tech/domain/repository/get_git_repos_repository.dart';

import '../data_source/git_repos_local_data_source.dart';
import '../data_source/git_repos_remote_data_source.dart';
import '../error/error_handler.dart';
import '../error/failure.dart';
import '../network/api_routes.dart';
import '../network/network_info.dart';

class GetGitReposRepositoryImpl
    extends GetGitReposRepository {
  final NetworkInfo networkInfo;
  final GitReposRemoteDataSource gitReposRemoteDataSource;
  final GitReposLocalDataSource gitReposLocalDataSource;

  GetGitReposRepositoryImpl(this.networkInfo, this.gitReposRemoteDataSource,
      this.gitReposLocalDataSource);

  @override
  Future<Either<Failure, List<DataModel>>> getRepos(
      {required int pageNumber}) async {
    if (await networkInfo.isConnected()) {
      try {
        final res = await gitReposRemoteDataSource.getGitReposList(pageNumber);
        await gitReposLocalDataSource.cacheGitRepos(res);
        return Right(res);
      } catch (e) {
        return Left(ErrorHandler.handle(e).failure);
      }
    } else {
      try {
        final res = await gitReposLocalDataSource.getSavedRepos();
        return Right(res);
      } catch (e) {
        return Left(ErrorHandler.handle(e).failure);
      }
    }
  }
}
