import 'package:conselheiro/domain/models/national_department.dart';
import 'package:conselheiro/domain/repositories/national_department_repository.dart';

class SaveNationalDepartmentUsecase {
  final NationalDepartmentRepository _nationalDepartmentRepository;

  SaveNationalDepartmentUsecase(this._nationalDepartmentRepository);

  Future<bool> execute(String name, String logoUrl) async {
    final nationalDepartment = NationalDepartment(name: name, logoUrl: logoUrl);
    await _nationalDepartmentRepository.save(nationalDepartment);
    return true;
  }
}
