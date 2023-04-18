import 'package:conselheiro/presentation/usecases/validate_name_result_type.dart';
import 'package:conselheiro/presentation/usecases/validate_name_usecase.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final useCase = ValidateNameUseCase();

  test("result must be valid without spaces", () async {
    final result = useCase.execute("DENAER");
    expect(result, ValidateNameResultType.valid);
  });

  test("result must be valid with spaces", () async {
    final result = useCase.execute(
      "Departamento Nacional De Embaixadores do Rei",
    );
    expect(result, ValidateNameResultType.valid);
  });

  test("too small", () async {
    final result = useCase.execute("ER");
    expect(result, ValidateNameResultType.tooSmall);
  });

  test("too long", () async {
    final result = useCase.execute(
      "DENAERDENAERDENAERDENAERDENAERDENAERDENAERDENAERDENAERDENAERDENAERDENAER",
    );
    expect(result, ValidateNameResultType.tooLong);
  });

  test("non alphabetic", () async {
    final result = useCase.execute(
      "DENAER 1948",
    );
    expect(result, ValidateNameResultType.nonAlphabetic);
  });
}
