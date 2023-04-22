import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginStateInitial());

  void login({
    required String email,
    required String password,
  }) async {
    emit(LoginStateLoading());
    try {
      emit(LoginStateSuccess());
    } on Exception {
      emit(LoginStateFasle());
    }
  }
}
