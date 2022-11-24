import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:task_preview_tech/app/core/config.dart';
import 'package:task_preview_tech/domain/models/data_model.dart';
import 'package:task_preview_tech/domain/repository/get_git_repos_repository.dart';

import '../../app/core/use_cases/use_case.dart';
import '../../data/error/failure.dart';

class GetGitReposUseCase implements UseCase<List<DataModel>,GetReposParams>{

  final GetGitReposRepository getGitReposRepository;

  GetGitReposUseCase({required this.getGitReposRepository});

  @override
  Future<Either<Failure, List<DataModel>>> call(params) async{
    return await getGitReposRepository.getRepos(pageNumber: params.pageNumber);
  }
}

class GetReposParams extends Equatable{
  final int pageNumber;

  const GetReposParams({required this.pageNumber});

  @override
  List<Object?> get props => [pageNumber];
}