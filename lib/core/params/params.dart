class NoParams {}

class TemplateParams {}

class SignUpParams {
  final String userName;
  final String email;
  final String password;
  SignUpParams(
      {required this.email, required this.password, required this.userName});
}
