import 'package:flutter_test/flutter_test.dart';
import 'package:chatify/core/services/failure.dart';
import 'package:chatify/core/validators/email_validator.dart';

void main() {
  group("Email Validator Tests", () {
    test("should return failure when email is empty", () {
      final result = EmailValidator.validate("");

      expect(result.isLeft(), true);

      result.fold(
        (failure) {
          expect(
            failure,

            const Failure.validation(
              message: "Email is required",

              field: "email",
            ),
          );
        },

        (_) {
          fail("Expected Failure");
        },
      );
    });

    test("should return failure for invalid email", () {
      final result = EmailValidator.validate("abc");

      expect(result.isLeft(), true);

      result.fold(
        (failure) {
          failure.whenOrNull(
            validation: (message, field) {
              expect(message, "Enter a valid email");

              expect(field, "email");
            },
          );
        },

        (_) {
          fail("Expected Failure");
        },
      );
    });

    test("should return email when valid", () {
      final result = EmailValidator.validate("test@gmail.com");

      expect(result.isRight(), true);

      result.fold(
        (_) {
          fail("Expected Success");
        },

        (email) {
          expect(email, "test@gmail.com");
        },
      );
    });
  });
}
