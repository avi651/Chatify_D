import 'package:flutter_test/flutter_test.dart';

import 'package:chatify/core/services/failure.dart';
import 'package:chatify/core/validators/password_validator.dart';

void main() {
  group("Password Validator Tests", () {
    test("should return failure when password is empty", () {
      final result = PasswordValidator.validate("");

      expect(result.isLeft(), true);

      result.fold(
        (failure) {
          expect(
            failure,

            const Failure.validation(
              message: "Password is required",

              field: "password",
            ),
          );
        },

        (_) {
          fail("Expected Failure");
        },
      );
    });

    test("should return failure when password length is less than 8", () {
      final result = PasswordValidator.validate("Pass1");

      expect(result.isLeft(), true);

      result.fold(
        (failure) {
          expect(
            failure,

            const Failure.validation(
              message: "Password must be at least 8 characters",

              field: "password",
            ),
          );
        },

        (_) {
          fail("Expected Failure");
        },
      );
    });

    test("should return failure when uppercase letter is missing", () {
      final result = PasswordValidator.validate("password123");

      expect(result.isLeft(), true);

      result.fold(
        (failure) {
          expect(
            failure,

            const Failure.validation(
              message: "Password must contain uppercase letter",

              field: "password",
            ),
          );
        },

        (_) {
          fail("Expected Failure");
        },
      );
    });

    test("should return failure when lowercase letter is missing", () {
      final result = PasswordValidator.validate("PASSWORD123");

      expect(result.isLeft(), true);

      result.fold(
        (failure) {
          expect(
            failure,

            const Failure.validation(
              message: "Password must contain lowercase letter",

              field: "password",
            ),
          );
        },

        (_) {
          fail("Expected Failure");
        },
      );
    });

    test("should return failure when number is missing", () {
      final result = PasswordValidator.validate("Password");

      expect(result.isLeft(), true);

      result.fold(
        (failure) {
          expect(
            failure,

            const Failure.validation(
              message: "Password must contain number",

              field: "password",
            ),
          );
        },

        (_) {
          fail("Expected Failure");
        },
      );
    });

    test("should return password when valid", () {
      final result = PasswordValidator.validate("Password123");

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
