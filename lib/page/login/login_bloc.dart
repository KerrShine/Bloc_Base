import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_base/page/login/login_event.dart';
import 'package:flutter_bloc_base/page/login/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<EmailChanged>((event, emit) {
      emit(state.copyWith(email: event.email));
      // print('event.email=${event.email}');
    });

    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password));
    });

    on<LoginSubmitted>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await Future.delayed(Duration(seconds: 2));

      final email = state.email;
      final password = state.password;
      print('📨 Submitting login: $email / $password');

      emit(state.copyWith(isLoading: false, message: 'Success}'));
    });
  }
}
