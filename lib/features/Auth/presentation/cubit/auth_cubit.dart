import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';


part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial()) {
    passwordController.addListener(changeSuffixButton);
    changeSuffixButton();
  }

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool isPasswordObscure = true;
  bool isConfirmPasswordObscure = true;
  List<String> code = List.filled(6, " ");
  final formKey = GlobalKey<FormState>();
  final resetPasswordFormKey = GlobalKey<FormState>();
  final verifyCodeFormKey = GlobalKey<FormState>();

  void changeSuffixButton() {
    if (passwordController.text.isNotEmpty) {
      emit(AuthShowVisibilityIcon());
    } else {
      emit(AuthShowForgetPassword());
    }
  }

  void sendCode() {
    if (verifyCodeFormKey.currentState!.validate()) {
      print(code.join());
      emit(AuthCodeVerified());
    }
  }

  void returnBack() {
      emit(AuthReturnBack());
  }

  void changePasswordVisibility() {
    isPasswordObscure = !isPasswordObscure;
    emit(AuthPasswordVisibilityChanged(isPasswordObscure));
  }

  void changeConfirmPasswordVisibility() {
    isConfirmPasswordObscure = !isConfirmPasswordObscure;
    emit(AuthPasswordVisibilityChanged(isConfirmPasswordObscure, isConfirm: true));
  }


  void submitNewPassword(){
    if (resetPasswordFormKey.currentState!.validate()) {
      emit(PasswordChangesSuccessfully());
    }
  }
}
