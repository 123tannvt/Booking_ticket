part of 'login_cubit.dart';

abstract class LoginState {}

class LoginStateInitial extends LoginState {}

class LoginStateLoading extends LoginState {}

class LoginStateSuccess extends LoginState {
  // LoginStateSuccess({required this.userModel});
  // final UserModel userModel;
}

class LoginStateFasle extends LoginState {
  final String? err;
  LoginStateFasle({this.err});
}
