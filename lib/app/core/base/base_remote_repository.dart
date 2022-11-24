import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';

import '../../../data/error/error_handler.dart';
import '../../../data/error/failure.dart';
import '../config.dart';

abstract class BaseRemoteRepository {
  Future<Either<Failure, Map<String, dynamic>>> apiCallFromServer(Future future) async {
    try {
      final res = await future;
      if (res.statusCode == HttpStatus.ok) {
        final json = res.data;
        return Right(json);
      } else {
        return Left(
          Failure(
            res.statusCode ?? ResponseCode.default_,
            res.statusMessage ?? ResponseMessage.default_,
          ),
        );
      }
    } catch (e) {
      ConfigEnvironments.logger.e(e);
      return Left(ErrorHandler.handle(e).failure);
    }
  }
}
