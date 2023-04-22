//import 'package:book_tiket/src/features/profile/model/user_model.dart';

part of 'sign_up_cubit.dart';

abstract class SignUpState {}

class SignUpSateLoading extends SignUpState {}

class SignUpStateSuccess extends SignUpState {
  // SignUpStateSuccess({required this.userModel});
  // final UserModel userModel;
}

class SignUpStateFasle extends SignUpState {
  final String? err;
  SignUpStateFasle({this.err});
}
