import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {

  TextEditingController passwordController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordSignInController=TextEditingController();
  TextEditingController emailSignInController=TextEditingController();
  TextEditingController phoneController=TextEditingController();
  TextEditingController otpController=TextEditingController();

  AuthBloc() : super(AuthState.initial()) {
    on<GetOtp>(getOtp);
    on<SignIn>(signIn);
    on<SignUP>(signUp);
    on<GoogleSignIn>(googleSignIn);
    on<GoogleSignUP>(googleSignUp);
  }

  void getOtp(GetOtp event, Emitter<AuthState> emit) => print('object${event.hashCode}, $emit');
  void signIn(SignIn event, Emitter<AuthState> emit) => print('object${event.hashCode}, $emit');
  void signUp(SignUP event, Emitter<AuthState> emit) => print('object${event.hashCode}, $emit');
  void googleSignIn(GoogleSignIn event, Emitter<AuthState> emit) => print('object${event.hashCode}, $emit');
  void googleSignUp(GoogleSignUP event, Emitter<AuthState> emit) => print('object${event.hashCode}, $emit');
}
