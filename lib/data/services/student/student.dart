import 'dart:io';

import 'package:assignment_wandoor_kayla/domain/core/failure/failure.dart';
import 'package:assignment_wandoor_kayla/domain/core/success/success.dart';
import 'package:assignment_wandoor_kayla/domain/models/student/student.dart';
import 'package:assignment_wandoor_kayla/domain/repositories/student.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class StudentService implements StudentRepo {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;
  final String userCollection = 'users';
  final String dataCollection = 'students';

  @override
  Future<Either<Failure, List<Student>>> getData() async {
    try {
      final userId = FirebaseAuth.instance.currentUser!.uid;
      List<Student> list = [];
      await fireStore
          .collection(userCollection)
          .doc(userId)
          .collection(dataCollection)
          .get()
          .then((value) {
        list = value.docs.map((e) => Student.fromJson(e.data())).toList();
      });
      return Right(list);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Success>> insertInToDb(Student model) async {
    try {
      await uploadImage(model.image!).then((value) {
        if (value != null) {
          model.image = value;
        } else {
          return Left(Failure(message: 'Failed to add data please try again'));
        }
      });
      final userId = FirebaseAuth.instance.currentUser!.uid;
      final doc = fireStore
          .collection(userCollection)
          .doc(userId)
          .collection(dataCollection)
          .doc();
      model.id = doc.id;
      await doc.set(model.toJson());
      return Right(Success(message: 'student details added successfully'));
    } catch (e) {
      return Left(Failure(message: 'Failed to add data please try again'));
    }
  }

  @override
  Future<Either<Failure, List<Student>>> searchData(
      {required String qurrey}) async {
    try {
      final userId = FirebaseAuth.instance.currentUser!.uid;
      List<Student> list = [];
      await fireStore
          .collection(userCollection)
          .doc(userId)
          .collection(dataCollection)
          .where('name', isGreaterThanOrEqualTo: qurrey)
          .get()
          .then((value) {
        list = value.docs.map((e) => Student.fromJson(e.data())).toList();
        print('search or sort == ${list.length}');
      });
      return Right(list);
    } catch (e) {
      print('failed to sort${e.toString()}');
      return Left(Failure(message: 'something went wrong please try again'));
    }
  }

  @override
  Future<Either<Failure, List<Student>>> sortData(
      {required int start, required int end}) async {
    try {
      final userId = FirebaseAuth.instance.currentUser!.uid;
      List<Student> list = [];
      await fireStore
          .collection(userCollection)
          .doc(userId)
          .collection(dataCollection)
          .where('age', isGreaterThanOrEqualTo: start)
          .where('age', isLessThanOrEqualTo: end)
          .get()
          .then((value) {
        list = value.docs.map((e) => Student.fromJson(e.data())).toList();
        print('search or sort == ${list.length}');
      });
      return Right(list);
    } catch (e) {
      print('failed to sort${e.toString()}');
      return Left(Failure(message: 'something went wrong please try again'));
    }
  }

  Future<String?> uploadImage(String img) async {
    String? url;
    try {
      final userId = FirebaseAuth.instance.currentUser!.uid;
      File imgFile = File(img);
      String imageName = imgFile.path.split('/').last.toString();
      final reference = FirebaseStorage.instance.ref().child(userId);
      final toImg = reference.child(imageName);
      await toImg.putFile(imgFile);
      url = await toImg.getDownloadURL();
    } catch (e) {
      return url;
    }
    return url;
  }
}
