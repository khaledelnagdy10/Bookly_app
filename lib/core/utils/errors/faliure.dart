import 'package:dio/dio.dart';

abstract class Faliure {
  final String errMessage;

  Faliure(this.errMessage);
}

class ServicesFaliure extends Faliure {
  ServicesFaliure(super.errMessage);

  factory ServicesFaliure.fromDioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServicesFaliure('connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServicesFaliure('send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServicesFaliure('Receive timeout with ApiServer');
      case DioExceptionType.badResponse:
        return ServicesFaliure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServicesFaliure('Api Reauest was cancled');
      case DioExceptionType.connectionError:
        if (dioError.message!.contains('socketException')) {
          return ServicesFaliure('No internet connection');
        }
      case DioExceptionType.unknown:
        return ServicesFaliure('Unknown Error');
      default:
        return ServicesFaliure('oops try again later');
    }
    return ServicesFaliure('unExpected error');
  }
  factory ServicesFaliure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      ServicesFaliure(response['error']['nessage']);
    } else if (statusCode == 404) {
      return ServicesFaliure('Your request not founded');
    } else if (statusCode == 500) {
      return ServicesFaliure('Internal server error, please try later');
    }
    return ServicesFaliure('opps please try again');
  }
}
