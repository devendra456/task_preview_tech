import 'package:dartz/dartz.dart';
import 'package:task_preview_tech/domain/models/data_model.dart';

import '../../data/error/failure.dart';

abstract class GetGitReposRepository {
  Future<Either<Failure,List<DataModel>>> getRepos({required int pageNumber});
}