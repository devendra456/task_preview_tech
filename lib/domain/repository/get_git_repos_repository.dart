import 'package:dartz/dartz.dart';

import '../../data/error/failure.dart';
import '../../data/models/data_model.dart';

abstract class GetGitReposRepository {
  Future<Either<Failure,List<DataModel>>> getRepos({required int pageNumber});
}