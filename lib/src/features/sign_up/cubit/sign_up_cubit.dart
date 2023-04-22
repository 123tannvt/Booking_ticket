import 'package:bloc/bloc.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpSateLoading());

  void signIn({
    String? email,
    String? username,
    String? password,
  }) async {
    emit(SignUpSateLoading());
    try {
      emit(SignUpStateSuccess());
    } on Exception {
      emit(SignUpStateFasle());
    }
  }
}
