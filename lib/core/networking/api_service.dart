import 'package:dio/dio.dart';
import 'package:doctor/features/login/logic/models/login_request_body.dart';
import 'package:doctor/features/login/logic/models/login_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:doctor/core/networking/api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @POST(ApiConstants.loginUrl)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
}
