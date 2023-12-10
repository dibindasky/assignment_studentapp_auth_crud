import 'package:assignment_wandoor_kayla/domain/core/failure/failure.dart';
import 'package:assignment_wandoor_kayla/domain/core/success/success.dart';
import 'package:assignment_wandoor_kayla/domain/models/student/student.dart';
import 'package:dartz/dartz.dart';

abstract class StudentRepo {
  Future<Either<Failure, Success>> insertInToDb(Student model);
  Future<Either<Failure, List<Student>>> getData();
  Future<Either<Failure, List<Student>>> searchData({required String qurrey});
  Future<Either<Failure, List<Student>>> sortData(
      {required int start, required int end});
}
