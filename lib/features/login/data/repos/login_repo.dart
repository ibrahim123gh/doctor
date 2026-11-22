import 'package:doctor/core/helpers/app_logger.dart';
import 'package:doctor/core/networking/api_constants.dart';
import 'package:doctor/core/networking/api_error_handler.dart';
import 'package:doctor/core/networking/api_result.dart';
import 'package:doctor/core/networking/api_service.dart';
import 'package:doctor/features/login/data/models/login_request_body.dart';
import 'package:doctor/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      appLogger.i(
        'LOGIN: sending request to ${ApiConstants.apiBaseUrl}${ApiConstants.loginUrl}',
      );
      final response = await _apiService.login(loginRequestBody);
      appLogger.i('LOGIN: success response => $response');
      return ApiResult.success(response);
    } catch (e, s) {
      appLogger.e('LOGIN: caught error', error: e, stackTrace: s);
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
