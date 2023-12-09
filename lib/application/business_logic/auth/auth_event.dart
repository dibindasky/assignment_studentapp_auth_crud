part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.getOtp() = GetOtp;
  const factory AuthEvent.signIn() = SignIn;
  const factory AuthEvent.signUP() = SignUP;
  const factory AuthEvent.googleSignUP() = GoogleSignUP;
  const factory AuthEvent.googleSignIn() = GoogleSignIn;
}