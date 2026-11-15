import 'package:doctor/core/networking/api_result.dart';
import 'package:doctor/features/login/data/models/login_request_body.dart';
import 'package:doctor/features/login/data/repos/login_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);
    response.when(
      success: (data) => emit(LoginState.success(data)),
      failure: (errorHandler) => emit(
        LoginState.failure(
          error: errorHandler.apiErrorModel.message ?? '',
        ),
      ),
    );
  }
}
