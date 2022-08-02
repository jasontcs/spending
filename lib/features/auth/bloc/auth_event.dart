part of 'auth_bloc.dart';

abstract class AuthEvent {}

class AuthLoginRequested extends AuthEvent {}

class AuthUserChanged extends AuthEvent {}

class AuthLogoutRequested extends AuthEvent {}
