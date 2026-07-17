import 'package:flutter_test/flutter_test.dart';

import 'package:chatify/core/services/failure.dart';
import 'package:chatify/core/validators/confirm_password_validator.dart';

void main() {
  group("Confirm Password Validator Tests", () {
    test("should return failure when confirm password is empty", () {
      final result = ConfirmPasswordValidator.validate("", "Password123");

      expect(result.isLeft(), true);

      result.fold(
        (failure) {
          expect(
            failure,

            const Failure.validation(
              message: "Confirm password is required",

              field: "confirmPassword",
            ),
          );
        },

        (_) {
          fail("Expected Failure");
        },
      );
    });

    test("should return failure when passwords do not match", () {
      final result = ConfirmPasswordValidator.validate(
        "Password1234",

        "Password123",
      );

      expect(result.isLeft(), true);

      result.fold(
        (failure) {
          expect(
            failure,

            const Failure.validation(
              message: "Passwords do not match",

              field: "confirmPassword",
            ),
          );
        },

        (_) {
          fail("Expected Failure");
        },
      );
    });

    test("should return confirm password when passwords match", () {
      final result = ConfirmPasswordValidator.validate(
        "Password123",

        "Password123",
      );

      expect(result.isRight(), true);

      result.fold(
        (_) {
          fail("Expected Success");
        },

        (password) {
          expect(password, "Password123");
        },
      );
    });
  });
}
