import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:task_preview_tech/app/core/config.dart';
import 'package:task_preview_tech/domain/repository/get_git_repos_repository.dart';

import '../../app/core/use_cases/use_case.dart';
import '../../data/error/failure.dart';
import '../../data/models/data_model.dart';
import '../entity/git_repos_entity.dart';

class GetGitReposUseCase
    implements UseCase<List<GitReposEntity>, GetReposParams> {
  final GetGitReposRepository getGitReposRepository;

  GetGitReposUseCase({required this.getGitReposRepository});

  @override
  Future<Either<Failure, List<GitReposEntity>>> call(params) async {
    final res =
        await getGitReposRepository.getRepos(pageNumber: params.pageNumber);
    return res.fold((l) => Left(l), (r) {
      final List<GitReposEntity> list = [];
      for (var element in r) {
        list.add(GitReposEntity(
          name: element.name ?? "",
          description: element.description ?? "",
          language: element.language ?? "",
          openIssues: element.openIssues ?? 0,
          watchers: element.watchers ?? 0,
        ));
      }
      return Right(list);
    });
  }
}

class GetReposParams extends Equatable {
  final int pageNumber;

  const GetReposParams({required this.pageNumber});

  @override
  List<Object?> get props => [pageNumber];
}
