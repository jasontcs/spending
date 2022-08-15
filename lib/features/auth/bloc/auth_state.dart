part of 'auth_bloc.dart';

enum AuthStatus { login, logout }

@freezed
class AuthState with _$AuthState {
  const factory AuthState({@Default(AuthStatus.logout) AuthStatus status}) =
      _AuthState;
}
