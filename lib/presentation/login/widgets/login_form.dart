import 'package:chatify/presentation/bloc/login_bloc/login_validation_bloc.dart';
import 'package:chatify/presentation/bloc/login_bloc/login_validation_event.dart';
import 'package:chatify/presentation/bloc/login_bloc/login_validation_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/app_password_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<LoginValidationBloc, LoginValidationState>(
          builder: (context, state) {
            return AppTextField(
              label: "Email",

              hint: "Enter your email",

              icon: Icons.email_outlined,

              keyboardType: TextInputType.emailAddress,

              errorText: state.emailError,

              onChanged: (value) {
                context.read<LoginValidationBloc>().add(EmailChanged(value));
              },
            );
          },
        ),

        const SizedBox(height: 16),

        BlocBuilder<LoginValidationBloc, LoginValidationState>(
          builder: (context, state) {
            return AppPasswordField(
              label: "Password",

              hint: "Enter your password",

              errorText: state.passwordError,

              onChanged: (value) {
                context.read<LoginValidationBloc>().add(PasswordChanged(value));
              },
            );
          },
        ),
      ],
    );
  }
}
