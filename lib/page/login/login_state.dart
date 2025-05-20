import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  final String email;
  final String password;
  final String message;
  final bool isLoading;

  const LoginState({
    this.email = '',
    this.password = '',
    this.message = '',
    this.isLoading = false,
  });

  LoginState copyWith({
    String? email,
    String? password,
    String? message,
    bool? isLoading,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      message: message ?? this.message,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [email, password, message, isLoading];
}
