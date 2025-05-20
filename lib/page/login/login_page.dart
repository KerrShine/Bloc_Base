// HomePage.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_base/page/login/login_event.dart';
import 'login_bloc.dart';
import 'login_state.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc(),
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Email'),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: TextField(
                      onChanged: (value) {
                        context.read<LoginBloc>().add(EmailChanged(value));
                      },
                    ),
                  ),
                  Text('PassWord'),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: TextField(
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      onChanged: (value) {
                        context.read<LoginBloc>().add(PasswordChanged(value));
                      },
                      obscureText: true,
                      decoration: InputDecoration(prefixIcon: Icon(Icons.key)),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                        backgroundColor: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1.0),
                        ),
                        side: BorderSide(color: Colors.transparent),
                        foregroundColor: Colors.black,
                      ),
                      onPressed: () {
                        context.read<LoginBloc>().add(LoginSubmitted());
                      },
                      child: Text('Login'),
                    ),
                  ),
                  Text(state.message),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
