import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_preview_tech/app/core/base/base_remote_repository.dart';
import 'package:task_preview_tech/data/network/api_base_client.dart';
import 'package:task_preview_tech/domain/models/data_model.dart';
import 'package:task_preview_tech/domain/repository/get_git_repos_repository.dart';

import '../error/error_handler.dart';
import '../error/failure.dart';
import '../network/api_routes.dart';
import '../network/network_info.dart';

class GetGitReposRepositoryImpl extends GetGitReposRepository with BaseRemoteRepository {
  final NetworkInfo networkInfo;

  GetGitReposRepositoryImpl(this.networkInfo);

  @override
  Future<Either<Failure, List<DataModel>>> getRepos(
      {required int pageNumber}) async {
    if (await networkInfo.isConnected()) {
      final otpModel = ApiBaseClient.client.post(
        APIRoutes.getRepos,
        data: {"mobile": pageNumber},
      );
      final response = await apiCallFromServer(otpModel);
      return response.fold((l) => Left(l), (r) {
        try {
          return Right(dataModelFromJson(r));
        } catch (e) {
          return Left(
            Failure(ResponseCode.default_, "JSON serialization error!"),
          );
        }
      });
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}
