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
  TextEditingController emailController = TextEditingController();
  bool isPasswordObscure = true;
  final formKey = GlobalKey<FormState>();
  void changeSuffixButton() {
    if (passwordController.text.isNotEmpty) {
      emit(AuthShowVisibilityIcon());
    } else {
      emit(AuthShowForgetPassword());
    }
  }

  void changeVisibility() {
    isPasswordObscure = !isPasswordObscure;
    emit(AuthPasswordVisibilityChanged(isPasswordObscure));
  }}
