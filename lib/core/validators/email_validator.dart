import 'package:dartz/dartz.dart';
import '../services/failure.dart';

class EmailValidator {
  static Either<Failure, String> validate(String? value) {
    if (value == null || value.trim().isEmpty) {
      return left(
        const Failure.validation(message: "Email is required", field: "email"),
      );
    }

    final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!regex.hasMatch(value.trim())) {
      return left(
        const Failure.validation(
          message: "Enter a valid email",

          field: "email",
        ),
      );
    }

    return right(value.trim());
  }
}
