part of 'auth_bloc.dart';

enum AuthStatus { login, logout }

class AuthState {
  AuthState({this.status = AuthStatus.logout});

  final AuthStatus status;
}
