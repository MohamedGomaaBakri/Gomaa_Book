import 'package:dio/dio.dart';

class Failure {
  final String errMsg;

  Failure(this.errMsg);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMsg);

  factory ServerFailure.fromDioError(DioException dioerror) {
    switch (dioerror.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection timeout with ApiServer ');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer ');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer ');
      case DioExceptionType.badCertificate:
        return ServerFailure('BadCetificate... ');
      case DioExceptionType.badResponse:
        return ServerFailure('BadResponse with status code ');
      case DioExceptionType.cancel:
        return ServerFailure('Request Cancelled ');
      case DioExceptionType.connectionError:
        return ServerFailure('connectionError Check your internet connection ');
      case DioExceptionType.unknown:
        return ServerFailure('Failed with unknown reason...Try Again later ');
      default:
        return ServerFailure('opps unexpected error ,please try later');
    }
  }
}
