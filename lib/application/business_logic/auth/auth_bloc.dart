import 'package:assignment_wandoor_kayla/domain/models/auth/auth_model.dart';
import 'package:assignment_wandoor_kayla/domain/models/auth/otp_model.dart';
import 'package:assignment_wandoor_kayla/domain/models/auth/phone_model.dart';
import 'package:assignment_wandoor_kayla/domain/repositories/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {

  final AuthRepo authService;

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordSignInController = TextEditingController();
  TextEditingController emailSignInController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  AuthBloc(this.authService) : super(AuthState.initial()) {

    on<GetOtp>(getOtp);
    on<VerifyOtp>(verifyOtp);
    on<SignIn>(signIn);
    on<SignUP>(signUp);
    on<SignOut>(signOut);
    on<GoogleSignIn>(googleSignIn);
  }

  Future<void> getOtp(GetOtp event, Emitter<AuthState> emit) async {
    print('get otp bloc');
    emit(state.copyWith(hasError: false, isLoading: true));
    final result = await authService.sendOtp(event.phoneModel);
    result.fold(
      (failure) => emit(
        state.copyWith(

            hasError: true, isLoading: false, message: failure.message),
      ),
      (success) => emit(
        state.copyWith(isLoading: false, message: success.message,otpVerificationId: success.message),
      ),
    );
  }

  Future<void> verifyOtp(VerifyOtp event, Emitter<AuthState> emit) async {
    print('verify otp bloc');
    emit(state.copyWith(hasError: false, isLoading: true));
    final result =
        await authService.verifyOtp(state.otpVerificationId!, event.otpModel);
        print('back to block');
    result.fold(
      (failure) => emit(state.copyWith(
          hasError: true,
          isLoading: false,
          message: failure.message,
          otpSuccess: false)),
      (success) => emit(
        state.copyWith(
            otpSuccess: true, isLoading: false, message: success.message),
      ),
    );
  }

  Future<void> signIn(SignIn event, Emitter<AuthState> emit) async {
    print('sign in email password bloc');
    emit(
      state.copyWith(hasError: false, isLoading: true),
    );
    final result = await authService.signInWithEmail(login: event.authModel);
    result.fold(
      (failure) => emit(state.copyWith(
          hasError: true, isLoading: false, message: failure.message)),
      (success) => emit(
        state.copyWith(
            signInSuccess: true,
            isLoading: false,
            message: 'user authentiacated successully'),
      ),
    );
  }

  Future<void> signUp(SignUP event, Emitter<AuthState> emit) async {
    print('sign up email and passwod bloc');
    emit(state.copyWith(hasError: false, isLoading: true));
    final result = await authService.signUpWithEmail(signUp: event.authModel);
    result.fold(
      (failure) => emit(state.copyWith(
          hasError: true, isLoading: false, message: failure.message)),
      (success) => emit(
        state.copyWith(
            signInSuccess: true,
            isLoading: false,
            message: 'user authentiacated successully'),
      ),
    );
  }

  Future<void> googleSignIn(GoogleSignIn event, Emitter<AuthState> emit) async {
    print('google sign in bloc');
    emit(state.copyWith(hasError: false, isLoading: true));
    final result = await authService.signInWithGoogle();
    result.fold(
      (failure) => emit(
        state.copyWith(
            hasError: true, isLoading: false, message: failure.message),
      ),
      (success) => emit(
        state.copyWith(
            signInSuccess: true,
            isLoading: false,
            message: 'user authentiacated successully'),
      ),
    );
  }


  Future<void> signOut(SignOut event, Emitter<AuthState> emit) async {
    print('sign out bloc');
    emit(state.copyWith(hasError: false, isLoading: true));
    final result = await authService.signOut();
    result.fold(
      (failure) => emit(
        state.copyWith(
            hasError: true,
            isLoading: false,
            message: failure.message,
            logOutSuccess: false),
      ),
      (success) => emit(
        state.copyWith(
            logOutSuccess: true,
            isLoading: false,
            message: success.message,
            otpSuccess: null,
            otpVerificationId: null,
            signInSuccess: null,
            signUpSuccess: null),
      ),
    );
  }
}