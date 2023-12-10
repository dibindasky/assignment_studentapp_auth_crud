part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.getOtp({required PhoneModel phoneModel}) = GetOtp;
  const factory AuthEvent.verifyOtp({required OtpModel otpModel}) = VerifyOtp;
  const factory AuthEvent.signIn({required AuthModel authModel}) = SignIn;
  const factory AuthEvent.signUP({required AuthModel authModel}) = SignUP;
  const factory AuthEvent.googleSignIn() = GoogleSignIn;
  const factory AuthEvent.signOut() = SignOut;
}
