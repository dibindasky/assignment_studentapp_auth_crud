import 'dart:async';

import 'package:assignment_wandoor_kayla/domain/core/failure/failure.dart';
import 'package:assignment_wandoor_kayla/domain/core/success/success.dart';
import 'package:assignment_wandoor_kayla/domain/models/auth/auth_model.dart';
import 'package:assignment_wandoor_kayla/domain/models/auth/otp_model.dart';
import 'package:assignment_wandoor_kayla/domain/models/auth/phone_model.dart';
import 'package:assignment_wandoor_kayla/domain/repositories/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService implements AuthRepo {
  @override
  Future<Either<Failure, UserCredential>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      return Right(
          await FirebaseAuth.instance.signInWithCredential(credential));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserCredential>> signUpWithEmail(
      {required AuthModel signUp}) async {
    try {
      final UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: signUp.email, password: signUp.password);
      // userCredential.user!.sendEmailVerification();
      return Right(userCredential);
    } catch (e) {
      return Left(Failure(message: 'Failed to signup'));
    }
  }

  @override
  Future<Either<Failure, UserCredential>> signInWithEmail(
      {required AuthModel login}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: login.email, password: login.password);
      return Right(credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
        return Left(Failure(message: 'no account find with given email'));
      } else if (e.code == 'wrong-password') {
        return Left(Failure(message: 'wrong password'));
      } else {
        return Left(Failure(message: e.message));
      }
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Success>> sendOtp(PhoneModel phoneModel) async {
    try {
      Completer<String?> completer = Completer<String>();
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneModel.phone,
        timeout: const Duration(seconds: 60),
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (error) {
          completer.complete(null);
        },
        codeSent: (String verificationId, int? resendToken) {
          completer.complete(verificationId);
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
      if (await completer.future == null) {
        return Left(Failure(message: 'failed to send otp'));
      } else {
        return Right(Success(message: await completer.future));
      }
    } catch (e) {
      return Left(Failure(message: 'failed to send otp'));
    }
  }

  @override
  Future<Either<Failure, Success>> verifyOtp(
      String verificationId, OtpModel otpModel) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: otpModel.smsCode);
      await FirebaseAuth.instance.signInWithCredential(credential);
      return Right(Success(message: ''));
    } catch (error) {
      return Left(Failure(message: 'failed to verify otp'));
    }
  }
}
