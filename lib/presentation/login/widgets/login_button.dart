import 'package:chatify/presentation/bloc/login_bloc/login_validation_bloc.dart';
import 'package:chatify/presentation/bloc/login_bloc/login_validation_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/app_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginValidationBloc, LoginValidationState>(
      builder: (context, state) {
        return AppButton(
          title: "Login",

          isLoading: false,

          onPressed: state.isValid
              ? () {
                  debugPrint("Login Clicked");
                }
              : null,
        );
      },
    );
  }
}
