import 'package:assignment_wandoor_kayla/domain/core/failure/failure.dart';
import 'package:assignment_wandoor_kayla/domain/core/success/success.dart';
import 'package:assignment_wandoor_kayla/domain/models/auth/auth_model.dart';
import 'package:assignment_wandoor_kayla/domain/models/auth/phone_model.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepo {
  Future<Either<Failure, Success>> sendOtp(PhoneModel phoneModel);
  Future<Either<Failure, UserCredential>> signInWithEmail(
      {required AuthModel login});
  Future<Either<Failure, UserCredential>> signUpWithEmail(
      {required AuthModel signUp});
  Future<Either<Failure, UserCredential>> signInWithGoogle();
}
