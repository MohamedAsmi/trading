part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {
  final String msg;

  AuthSuccess({required this.msg});
}

final class AuthFailure extends AuthState {
  final List<dynamic> msg;

  AuthFailure({required this.msg});
}
