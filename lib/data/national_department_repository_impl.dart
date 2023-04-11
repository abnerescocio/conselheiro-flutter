import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:conselheiro/domain/models/national_department.dart';
import 'package:conselheiro/domain/repositories/national_department_repository.dart';

class NationalDepartmentRepositoryImpl extends NationalDepartmentRepository {
  final FirebaseFirestore _firestore;

  NationalDepartmentRepositoryImpl(this._firestore);

  @override
  Future<bool> save(NationalDepartment nationalDepartment) async {
    final data = nationalDepartment.toJson();
    await _firestore
        .collection("nationalDepartments")
        .doc()
        .set(data, SetOptions(merge: true));
    return true;
  }
}
