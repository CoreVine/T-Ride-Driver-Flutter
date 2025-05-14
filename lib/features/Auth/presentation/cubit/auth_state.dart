part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

final class AuthShowForgetPassword extends AuthState {}

final class AuthShowVisibilityIcon extends AuthState {}

final class PasswordChangesSuccessfully extends AuthState {}

final class AuthCodeVerified extends AuthState {}

final class AuthReturnBack extends AuthState {}

class AuthPasswordVisibilityChanged extends AuthState {
  final bool isObscure;
  final bool isConfirm;

  const AuthPasswordVisibilityChanged(this.isObscure, {this.isConfirm = false});

  @override
  List<Object> get props => [isObscure, isConfirm];
}
