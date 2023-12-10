part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState(
      {required bool isLoading,
      required bool hasError,
      String? message,
      bool? otpSuccess,
      bool? logOutSuccess,
      bool? signUpSuccess,
      bool? signInSuccess,
      String? otpVerificationId}) = _Initial;

  factory AuthState.initial() =>
      const AuthState(isLoading: false, hasError: false);
}
