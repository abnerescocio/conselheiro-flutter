import 'package:conselheiro/domain/models/national_department.dart';

abstract class NationalDepartmentRepository {
  Future<bool> save(NationalDepartment nationalDepartment);
}
