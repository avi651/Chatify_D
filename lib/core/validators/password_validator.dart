import 'package:dartz/dartz.dart';
import '../services/failure.dart';

class PasswordValidator {
  static Either<Failure, String> validate(String? value) {
    if (value == null || value.isEmpty) {
      return left(
        const Failure.validation(
          message: "Password is required",

          field: "password",
        ),
      );
    }

    if (value.length < 8) {
      return left(
        const Failure.validation(
          message: "Password must be at least 8 characters",

          field: "password",
        ),
      );
    }

    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return left(
        const Failure.validation(
          message: "Password must contain uppercase letter",

          field: "password",
        ),
      );
    }

    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return left(
        const Failure.validation(
          message: "Password must contain lowercase letter",

          field: "password",
        ),
      );
    }

    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return left(
        const Failure.validation(
          message: "Password must contain number",

          field: "password",
        ),
      );
    }

    return right(value);
  }
}
