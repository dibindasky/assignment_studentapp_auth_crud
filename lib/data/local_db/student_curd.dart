import 'package:assignment_wandoor_kayla/domain/core/failure/failure.dart';
import 'package:assignment_wandoor_kayla/domain/core/success/success.dart';
import 'package:assignment_wandoor_kayla/domain/models/student/student.dart';
import 'package:assignment_wandoor_kayla/domain/repositories/student.dart';
import 'package:dartz/dartz.dart';
import 'package:sqflite/sqflite.dart' as sql;

class StudentDb implements StudentRepo{
  StudentDb._();
  static final StudentDb _instance = StudentDb._();
  factory StudentDb() => _instance;

  late sql.Database db;
  final String studentTable = 'student';

  final String columName = 'name';
  final String columAge = 'age';
  final String columImage = 'image';

  Future initialiseDatabase() async {
    db = await sql.openDatabase(
      'student.db',
      version: 1,
      onCreate: (db, version) async => await db.execute(
          'CREATE TABLE $studentTable (id INTEGER PRIMARY KEY, $columName TEXT, $columAge INTEGER, $columImage TEXT)'),
    );
  }

  @override
  Future<Either<Failure, Success>> insertInToDb(Student model) async {
    try {
      String image = model.image == null ? '' : model.image!.path;
      db.rawInsert(
          'INSERT INTO $studentTable($columName, $columAge, $columImage) VALUES(?, ?, ?)',
          [model.name, model.age, image]);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
    return Right(Success(message: 'User data added successfully'));
  }

  @override
  Future<Either<Failure, List<Student>>> getData() async {
    try {
      List<Student> studentList = [];
      List<Map<String, Object?>> list =
          await db.rawQuery('SELECT * FROM $studentTable');
      for (var map in list) {
        final student = Student.fromMap(map);
        studentList.add(student);
      }
      return Right(studentList);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Student>>> searchData(
      {required String qurrey}) async {
    try {
      List<Student> studentList = [];
      List<Map<String, Object?>> list = await db.rawQuery(
          'SELECT * FROM $studentTable WHERE $columName LIKE $qurrey');
      for (var map in list) {
        final student = Student.fromMap(map);
        studentList.add(student);
      }
      return Right(studentList);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Student>>> sortData(
      {required int start, required int end}) async {
    try {
      List<Student> studentList = [];
      List<Map<String, Object?>> list = await db.rawQuery(
          'SELECT * FROM $studentTable WHERE $columAge >= $start AND $columAge <= $end ORDER BY $columAge');
      for (var map in list) {
        final student = Student.fromMap(map);
        studentList.add(student);
      }
      return Right(studentList);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
