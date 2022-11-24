import 'package:dio/dio.dart';

import 'failure.dart';

enum DataSource {
  success,
  noContent,
  badRequest,
  forbidden,
  unAuthorised,
  notFound,
  internalServerError,
  connectionTimeOut,
  cancel,
  receiveTimeOut,
  sendTimeOut,
  cacheError,
  noInternetConnection,
  default_
}

class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler.handle(dynamic error) {
    if (error is DioError) {
      // dio error so its error from response of the API
      failure = _handleError(error);
    } else {
      // default error
      failure = DataSource.default_.getFailure();
    }
  }

  Failure _handleError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectTimeout:
        return DataSource.connectionTimeOut.getFailure();
      case DioErrorType.sendTimeout:
        return DataSource.sendTimeOut.getFailure();
      case DioErrorType.receiveTimeout:
        return DataSource.receiveTimeOut.getFailure();
      case DioErrorType.response:
        switch (error.response?.statusCode) {
          case ResponseCode.badRequest:
            return DataSource.badRequest.getFailure();
          case ResponseCode.forbidden:
            return DataSource.forbidden.getFailure();
          case ResponseCode.unAuthorised:
            return DataSource.unAuthorised.getFailure();
          case ResponseCode.notFound:
            return DataSource.notFound.getFailure();
          case ResponseCode.internalServerError:
            return DataSource.internalServerError.getFailure();
          default:
            return DataSource.default_.getFailure();
        }
      case DioErrorType.cancel:
        return DataSource.cancel.getFailure();
      case DioErrorType.other:
        return DataSource.default_.getFailure();
    }
  }
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    switch (this) {
      case DataSource.badRequest:
        return Failure(ResponseCode.badRequest, ResponseMessage.badRequest);
      case DataSource.forbidden:
        return Failure(ResponseCode.forbidden, ResponseMessage.forbidden);
      case DataSource.unAuthorised:
        return Failure(ResponseCode.unAuthorised, ResponseMessage.unAuthorised);
      case DataSource.notFound:
        return Failure(ResponseCode.notFound, ResponseMessage.notFound);
      case DataSource.internalServerError:
        return Failure(ResponseCode.internalServerError,
            ResponseMessage.internalServerError);
      case DataSource.connectionTimeOut:
        return Failure(
            ResponseCode.connectionTimeOut, ResponseMessage.connectionTimeOut);
      case DataSource.cancel:
        return Failure(ResponseCode.cancel, ResponseMessage.cancel);
      case DataSource.receiveTimeOut:
        return Failure(
            ResponseCode.receiveTimeOut, ResponseMessage.receiveTimeOut);
      case DataSource.sendTimeOut:
        return Failure(ResponseCode.sendTimeOut, ResponseMessage.sendTimeOut);
      case DataSource.cacheError:
        return Failure(ResponseCode.cacheError, ResponseMessage.cacheError);
      case DataSource.noInternetConnection:
        return Failure(ResponseCode.noInternetConnection,
            ResponseMessage.noInternetConnection);
      case DataSource.default_:
        return Failure(ResponseCode.default_, ResponseMessage.default_);
      default:
        return Failure(ResponseCode.default_, ResponseMessage.default_);
    }
  }
}

class ResponseCode {
  // API status codes
  static const int success = 200; // success with data
  static const int noContent = 201; // success with no content
  static const int badRequest = 400; // failure, api rejected the request
  static const int forbidden = 403; // failure, api rejected the request
  static const int unAuthorised = 401; // failure user is not authorised
  static const int notFound =
      404; // failure, api url is not correct and not found
  static const int internalServerError =
      500; // failure, crash happened in server side

  // local status code
  static const int default_ = -1;
  static const int connectionTimeOut = -2;
  static const int cancel = -3;
  static const int receiveTimeOut = -4;
  static const int sendTimeOut = -5;
  static const int cacheError = -6;
  static const int noInternetConnection = -7;
}

class ResponseMessage {
  // API status codes
  // API response codes
  static const String success = "Success"; // success with data
  static const String noContent =
      "No content"; // success with no content
  static const String badRequest =
      "Bad request"; // failure, api rejected our request
  static const String forbidden =
      "Forbidden"; // failure,  api rejected our request
  static const String unAuthorised =
      "Unauthorized"; // failure, user is not authorised
  static const String notFound = "Not found"; // failure, API url is not correct and not found in api side.
  static const String internalServerError = "Internal server error"; // failure, a crash happened in API side.

  // local responses codes
  static const String default_ = "Something went wrong"; // unknown error happened
  static const String connectionTimeOut ="Connection time out"; // issue in connectivity
  static const String cancel ="Cancel"; // API request was cancelled
  static const String receiveTimeOut ="Receive time out"; //  issue in connectivity
  static const String sendTimeOut =
      "Send time out"; //  issue in connectivity
  static const String cacheError = "Cache Error"; //  issue in getting data from local data source (cache)
  static const String noInternetConnection ="No Internet"; // issue in connectivity
}
