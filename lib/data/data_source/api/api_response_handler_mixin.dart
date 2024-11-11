import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'api_response.dart';

mixin ApiResponseHandlerMixin {
  Future<ApiResponse<T>> executeApiCall<T>(
    Future<T> apiRequest,
  ) async {
    try {
      final result = await apiRequest;
      return SuccessApiResponse(result);
    } on DioException catch (dioException) {
      debugPrintStack(stackTrace: dioException.stackTrace);
      switch (dioException.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          return ErrorApiResponse(
            httpErrorMessage: dioException.message ?? 'timeOut',
            httpStatusCode: dioException.response?.statusCode ?? 408,
          );
        case DioExceptionType.badResponse:
          return ErrorApiResponse(
            httpErrorMessage: dioException.message ?? 'badResponse',
            httpStatusCode: dioException.response?.statusCode ?? 408,
          );
        case DioExceptionType.connectionError:
          return ErrorApiResponse(
            httpErrorMessage: dioException.message ?? 'connectionError',
            httpStatusCode: dioException.response?.statusCode ?? 408,
          );
        case DioExceptionType.unknown:
          return ErrorApiResponse(
            httpErrorMessage: dioException.message ?? 'unknown',
            httpStatusCode: dioException.response?.statusCode ?? 601,
          );
        default:
          return ErrorApiResponse(
            httpErrorMessage: 'Unknown',
            httpStatusCode: dioException.response?.statusCode ?? 601,
          );
      }
    } catch (e) {
      return ErrorApiResponse(
        httpErrorMessage: 'Unknown ${e.toString()}',
        httpStatusCode: 601,
      );
    }
  }
}
