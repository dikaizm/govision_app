import 'package:govision/shared/util/email_validator.dart';

class Validator {
  static bool isValidEmail(String? value) {
    if (value == null) {
      return false;
    }
    if (value.isEmpty) {
      return false;
    }
    if (value.length < 4) {
      return false;
    }

    return EmailValidator.validate(value);
  }

  static bool isValidPassword(String? value) {
    if (value == null || value.isEmpty || value.length < 8) {
      return false;
    }

    // Validate password: at least one lowercase letter and one digit
    final passValid =
        RegExp(r"^(?=.*[a-z])(?=.*[0-9]).{5,32}$").hasMatch(value);

    return passValid;
  }

  static bool isMatchPassword(String? password, String? confirmPassword) {
    return password == confirmPassword;
  }

  static bool isValidPhoneNumber(String? value) {
    // Regular expression for country code (e.g., + followed by digits)
    final countryCodeRegex = RegExp(r'^\+\d+');

    return value != null &&
        value.isNotEmpty &&
        value.length >= 10 &&
        countryCodeRegex.hasMatch(value);
  }
}
