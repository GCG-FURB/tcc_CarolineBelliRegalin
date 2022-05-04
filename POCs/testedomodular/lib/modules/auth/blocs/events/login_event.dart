class LoginEvent {}

class LoginWithEmail implements LoginEvent {
  final String password;
  final String email;

  LoginWithEmail({this.password, this.email});
}
