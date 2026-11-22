import 'package:doctor/core/helpers/app_logger.dart';
import 'package:doctor/core/networking/api_constants.dart';
import 'package:doctor/core/networking/api_error_handler.dart';
import 'package:doctor/core/networking/api_result.dart';
import 'package:doctor/core/networking/api_service.dart';
import 'package:doctor/features/sign_up/data/model/sign_up_request_body.dart';
import 'package:doctor/features/sign_up/data/model/sign_up_response.dart';

class SignUpRepo {
  final ApiService _apiService;

  SignUpRepo(this._apiService);

  Future<ApiResult<SignUpResponse>> signUp(
    SignUpRequestBody signUpRequestBody,
  ) async {
    try {
      final response = await _apiService.signUp(signUpRequestBody);
      return ApiResult.success(response);
    } catch (e, s) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
