import 'package:dio/dio.dart';

abstract class Failures {
  final String error;

  const Failures({required this.error});
}

class ServerFailure extends Failures {
  ServerFailure({required super.error});

  factory ServerFailure.fromDioException(DioException error) {
    String errorMessage = 'there was an error';
    switch (error.type) {
      case DioExceptionType.badCertificate:
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          error.response!.statusCode!,
          error.response!.data,
        );
      case DioExceptionType.receiveTimeout:
        errorMessage = 'server error';
        break;
      case DioExceptionType.cancel:
      case DioExceptionType.connectionError:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.connectionTimeout:
        errorMessage = 'Please check the internet and send again';
        break;
      case DioExceptionType.unknown:
        errorMessage = 'unKnown error';
        break;
      // ignore: unreachable_switch_default
      default:
        return ServerFailure(error: 'There was an error , Please try again');
    }
    return ServerFailure(error: errorMessage);
  }

  factory ServerFailure.fromResponse(
    int statesCode,
    dynamic errorResponseBody,
  ) {
    if (statesCode >= 400 && statesCode <= 410 && statesCode != 404) {
      return ServerFailure(
        error: errorResponseBody["errors"] != null
            ? parseErrorResponse(errorResponseBody as Map<String, dynamic>)
            : errorResponseBody["data"]["message"] ??
                'There was an error , Please try again',
      );
    } else if (statesCode == 404) {
      return ServerFailure(
        error: errorResponseBody['message'] ?? 'Not found, Please try again',
      );
    } else if (statesCode == 500) {
      return ServerFailure(error: 'Server error');
    } else {
      return ServerFailure(
        error: parseErrorResponse(
          errorResponseBody as Map<String, dynamic>,
        ).isEmpty
            ? 'There was an error , Please try again'
            : parseErrorResponse(errorResponseBody),
      );
    }
  }
}

String parseErrorResponse(Map<String, dynamic> errorResponse) {
  final errors = errorResponse['errors'] as Map<String, dynamic>;
  final errorMessages = errors.values.expand((messages) => messages).join('\n');
  return errorMessages;
}

class CacheFailure extends Failures {
  CacheFailure({required super.error});

  factory CacheFailure.fromException(Exception error) {
    return CacheFailure(error: error.toString());
  }
}
