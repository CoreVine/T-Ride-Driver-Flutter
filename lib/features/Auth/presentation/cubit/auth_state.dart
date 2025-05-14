part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}
final class AuthShowForgetPassword extends AuthState {}

final class AuthShowVisibilityIcon extends AuthState {}

class AuthPasswordVisibilityChanged extends AuthState {
  final bool isObscure;
  const AuthPasswordVisibilityChanged(this.isObscure);

  @override
  List<Object> get props => [isObscure];
}