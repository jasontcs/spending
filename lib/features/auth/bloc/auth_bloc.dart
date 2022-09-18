import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
export 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.firebaseAuth) : super(const AuthState()) {
    on<AuthLoginRequested>(_onLoginRequested);
    on<AuthUserChanged>(_onUserChanged);
    on<AuthLogoutRequested>(_onLogoutRequested);
  }
  final FirebaseAuth firebaseAuth;

  Future<void> _onLoginRequested(
      AuthLoginRequested event, Emitter<AuthState> emit) async {
    await firebaseAuth.signInAnonymously();
    add(AuthUserChanged());
  }

  void _onUserChanged(AuthUserChanged event, Emitter<AuthState> emit) {
    final bool loggedIn = firebaseAuth.currentUser != null;
    emit(AuthState(status: loggedIn ? AuthStatus.login : AuthStatus.logout));
  }

  Future<void> _onLogoutRequested(
      AuthLogoutRequested event, Emitter<AuthState> emit) async {
    await firebaseAuth.signOut();
    add(AuthUserChanged());
  }
}
