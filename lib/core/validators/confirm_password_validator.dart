import 'package:dartz/dartz.dart';

import '../services/failure.dart';

class ConfirmPasswordValidator {
  static Either<Failure, String> validate(
    String? confirmPassword,

    String password,
  ) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return left(
        const Failure.validation(
          message: "Confirm password is required",

          field: "confirmPassword",
        ),
      );
    }

    if (confirmPassword != password) {
      return left(
        const Failure.validation(
          message: "Passwords do not match",

          field: "confirmPassword",
        ),
      );
    }

    return right(confirmPassword);
  }
}
