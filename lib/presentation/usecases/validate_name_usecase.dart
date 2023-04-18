import 'package:conselheiro/presentation/usecases/validate_name_result_type.dart';

class ValidateNameUseCase {
  static const int minLength = 3;
  static const int maxLength = 64;
  static final RegExp alphabeticExp = RegExp("^[a-zA-Z ]+\$");

  ValidateNameResultType execute(String? input) {
    var isValid = true;

    if (input == null) {
      isValid = false;
      return ValidateNameResultType.nullable;
    }

    if (input.length < minLength) {
      isValid = false;
      return ValidateNameResultType.tooSmall;
    }

    if (input.length > maxLength) {
      isValid = false;
      return ValidateNameResultType.tooLong;
    }

    if (!alphabeticExp.hasMatch(input)) {
      isValid = false;
      return ValidateNameResultType.nonAlphabetic;
    }

    if (isValid) {
      return ValidateNameResultType.valid;
    }
  }
}
