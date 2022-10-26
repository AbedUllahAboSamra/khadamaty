part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthGetImageSuccessState extends AuthState {}

class AuthCreateAccountLoadingState extends AuthState {}

class AuthCreateAccountLoadedState extends AuthState {
  final Usere user;

AuthCreateAccountLoadedState({required this.user});
}

class AuthCreateAccountErrorState extends AuthState {
  final String error;

  AuthCreateAccountErrorState({required this.error});
}

class AuthLoginLoadingState extends AuthState {}

class AuthLoginLoadedState extends AuthState {
  final Usere user;

    AuthLoginLoadedState({required this.user});
}

class AuthLoginErrorState extends AuthState {
  final String error;

  AuthLoginErrorState({required this.error});
}

class AuthForgetSendEmailLoadingState extends AuthState {}

class AuthForgetSendEmailLoadedState extends AuthState {}

class AuthForgetSendEmailErrorState extends AuthState {
  final String error;

  AuthForgetSendEmailErrorState({required this.error});
}
