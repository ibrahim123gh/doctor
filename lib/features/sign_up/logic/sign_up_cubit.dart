import 'package:doctor/core/networking/api_result.dart';
import 'package:doctor/features/sign_up/data/model/sign_up_request_body.dart';
import 'package:doctor/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(SignUpState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();

  final formkey = GlobalKey<FormState>();

  void emitSignUpStates() async {
    emit(SignUpState.loading());
    final response = await _signUpRepo.signUp(
      SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        confirmPassword: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(
      success: (data) => emit(SignUpState.success(data)),
      failure: (errorHandler) => emit(
        SignUpState.failure(error: errorHandler.apiErrorModel.message ?? ''),
      ),
    );
  }
}
