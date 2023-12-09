// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneModel phoneModel) getOtp,
    required TResult Function(OtpModel otpModel) verifyOtp,
    required TResult Function(AuthModel authModel) signIn,
    required TResult Function(AuthModel authModel) signUP,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneModel phoneModel)? getOtp,
    TResult? Function(OtpModel otpModel)? verifyOtp,
    TResult? Function(AuthModel authModel)? signIn,
    TResult? Function(AuthModel authModel)? signUP,
    TResult? Function()? googleSignIn,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneModel phoneModel)? getOtp,
    TResult Function(OtpModel otpModel)? verifyOtp,
    TResult Function(AuthModel authModel)? signIn,
    TResult Function(AuthModel authModel)? signUP,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOtp value) getOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUP value) signUP,
    required TResult Function(GoogleSignIn value) googleSignIn,
    required TResult Function(SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOtp value)? getOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUP value)? signUP,
    TResult? Function(GoogleSignIn value)? googleSignIn,
    TResult? Function(SignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOtp value)? getOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUP value)? signUP,
    TResult Function(GoogleSignIn value)? googleSignIn,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetOtpImplCopyWith<$Res> {
  factory _$$GetOtpImplCopyWith(
          _$GetOtpImpl value, $Res Function(_$GetOtpImpl) then) =
      __$$GetOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PhoneModel phoneModel});
}

/// @nodoc
class __$$GetOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetOtpImpl>
    implements _$$GetOtpImplCopyWith<$Res> {
  __$$GetOtpImplCopyWithImpl(
      _$GetOtpImpl _value, $Res Function(_$GetOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneModel = null,
  }) {
    return _then(_$GetOtpImpl(
      phoneModel: null == phoneModel
          ? _value.phoneModel
          : phoneModel // ignore: cast_nullable_to_non_nullable
              as PhoneModel,
    ));
  }
}

/// @nodoc

class _$GetOtpImpl implements GetOtp {
  const _$GetOtpImpl({required this.phoneModel});

  @override
  final PhoneModel phoneModel;

  @override
  String toString() {
    return 'AuthEvent.getOtp(phoneModel: $phoneModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOtpImpl &&
            (identical(other.phoneModel, phoneModel) ||
                other.phoneModel == phoneModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOtpImplCopyWith<_$GetOtpImpl> get copyWith =>
      __$$GetOtpImplCopyWithImpl<_$GetOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneModel phoneModel) getOtp,
    required TResult Function(OtpModel otpModel) verifyOtp,
    required TResult Function(AuthModel authModel) signIn,
    required TResult Function(AuthModel authModel) signUP,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
  }) {
    return getOtp(phoneModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneModel phoneModel)? getOtp,
    TResult? Function(OtpModel otpModel)? verifyOtp,
    TResult? Function(AuthModel authModel)? signIn,
    TResult? Function(AuthModel authModel)? signUP,
    TResult? Function()? googleSignIn,
    TResult? Function()? signOut,
  }) {
    return getOtp?.call(phoneModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneModel phoneModel)? getOtp,
    TResult Function(OtpModel otpModel)? verifyOtp,
    TResult Function(AuthModel authModel)? signIn,
    TResult Function(AuthModel authModel)? signUP,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (getOtp != null) {
      return getOtp(phoneModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOtp value) getOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUP value) signUP,
    required TResult Function(GoogleSignIn value) googleSignIn,
    required TResult Function(SignOut value) signOut,
  }) {
    return getOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOtp value)? getOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUP value)? signUP,
    TResult? Function(GoogleSignIn value)? googleSignIn,
    TResult? Function(SignOut value)? signOut,
  }) {
    return getOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOtp value)? getOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUP value)? signUP,
    TResult Function(GoogleSignIn value)? googleSignIn,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (getOtp != null) {
      return getOtp(this);
    }
    return orElse();
  }
}

abstract class GetOtp implements AuthEvent {
  const factory GetOtp({required final PhoneModel phoneModel}) = _$GetOtpImpl;

  PhoneModel get phoneModel;
  @JsonKey(ignore: true)
  _$$GetOtpImplCopyWith<_$GetOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpImplCopyWith<$Res> {
  factory _$$VerifyOtpImplCopyWith(
          _$VerifyOtpImpl value, $Res Function(_$VerifyOtpImpl) then) =
      __$$VerifyOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OtpModel otpModel});
}

/// @nodoc
class __$$VerifyOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyOtpImpl>
    implements _$$VerifyOtpImplCopyWith<$Res> {
  __$$VerifyOtpImplCopyWithImpl(
      _$VerifyOtpImpl _value, $Res Function(_$VerifyOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpModel = null,
  }) {
    return _then(_$VerifyOtpImpl(
      otpModel: null == otpModel
          ? _value.otpModel
          : otpModel // ignore: cast_nullable_to_non_nullable
              as OtpModel,
    ));
  }
}

/// @nodoc

class _$VerifyOtpImpl implements VerifyOtp {
  const _$VerifyOtpImpl({required this.otpModel});

  @override
  final OtpModel otpModel;

  @override
  String toString() {
    return 'AuthEvent.verifyOtp(otpModel: $otpModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpImpl &&
            (identical(other.otpModel, otpModel) ||
                other.otpModel == otpModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      __$$VerifyOtpImplCopyWithImpl<_$VerifyOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneModel phoneModel) getOtp,
    required TResult Function(OtpModel otpModel) verifyOtp,
    required TResult Function(AuthModel authModel) signIn,
    required TResult Function(AuthModel authModel) signUP,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
  }) {
    return verifyOtp(otpModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneModel phoneModel)? getOtp,
    TResult? Function(OtpModel otpModel)? verifyOtp,
    TResult? Function(AuthModel authModel)? signIn,
    TResult? Function(AuthModel authModel)? signUP,
    TResult? Function()? googleSignIn,
    TResult? Function()? signOut,
  }) {
    return verifyOtp?.call(otpModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneModel phoneModel)? getOtp,
    TResult Function(OtpModel otpModel)? verifyOtp,
    TResult Function(AuthModel authModel)? signIn,
    TResult Function(AuthModel authModel)? signUP,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(otpModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOtp value) getOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUP value) signUP,
    required TResult Function(GoogleSignIn value) googleSignIn,
    required TResult Function(SignOut value) signOut,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOtp value)? getOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUP value)? signUP,
    TResult? Function(GoogleSignIn value)? googleSignIn,
    TResult? Function(SignOut value)? signOut,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOtp value)? getOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUP value)? signUP,
    TResult Function(GoogleSignIn value)? googleSignIn,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class VerifyOtp implements AuthEvent {
  const factory VerifyOtp({required final OtpModel otpModel}) = _$VerifyOtpImpl;

  OtpModel get otpModel;
  @JsonKey(ignore: true)
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthModel authModel});
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authModel = null,
  }) {
    return _then(_$SignInImpl(
      authModel: null == authModel
          ? _value.authModel
          : authModel // ignore: cast_nullable_to_non_nullable
              as AuthModel,
    ));
  }
}

/// @nodoc

class _$SignInImpl implements SignIn {
  const _$SignInImpl({required this.authModel});

  @override
  final AuthModel authModel;

  @override
  String toString() {
    return 'AuthEvent.signIn(authModel: $authModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInImpl &&
            (identical(other.authModel, authModel) ||
                other.authModel == authModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      __$$SignInImplCopyWithImpl<_$SignInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneModel phoneModel) getOtp,
    required TResult Function(OtpModel otpModel) verifyOtp,
    required TResult Function(AuthModel authModel) signIn,
    required TResult Function(AuthModel authModel) signUP,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
  }) {
    return signIn(authModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneModel phoneModel)? getOtp,
    TResult? Function(OtpModel otpModel)? verifyOtp,
    TResult? Function(AuthModel authModel)? signIn,
    TResult? Function(AuthModel authModel)? signUP,
    TResult? Function()? googleSignIn,
    TResult? Function()? signOut,
  }) {
    return signIn?.call(authModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneModel phoneModel)? getOtp,
    TResult Function(OtpModel otpModel)? verifyOtp,
    TResult Function(AuthModel authModel)? signIn,
    TResult Function(AuthModel authModel)? signUP,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(authModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOtp value) getOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUP value) signUP,
    required TResult Function(GoogleSignIn value) googleSignIn,
    required TResult Function(SignOut value) signOut,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOtp value)? getOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUP value)? signUP,
    TResult? Function(GoogleSignIn value)? googleSignIn,
    TResult? Function(SignOut value)? signOut,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOtp value)? getOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUP value)? signUP,
    TResult Function(GoogleSignIn value)? googleSignIn,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn implements AuthEvent {
  const factory SignIn({required final AuthModel authModel}) = _$SignInImpl;

  AuthModel get authModel;
  @JsonKey(ignore: true)
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUPImplCopyWith<$Res> {
  factory _$$SignUPImplCopyWith(
          _$SignUPImpl value, $Res Function(_$SignUPImpl) then) =
      __$$SignUPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthModel authModel});
}

/// @nodoc
class __$$SignUPImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUPImpl>
    implements _$$SignUPImplCopyWith<$Res> {
  __$$SignUPImplCopyWithImpl(
      _$SignUPImpl _value, $Res Function(_$SignUPImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authModel = null,
  }) {
    return _then(_$SignUPImpl(
      authModel: null == authModel
          ? _value.authModel
          : authModel // ignore: cast_nullable_to_non_nullable
              as AuthModel,
    ));
  }
}

/// @nodoc

class _$SignUPImpl implements SignUP {
  const _$SignUPImpl({required this.authModel});

  @override
  final AuthModel authModel;

  @override
  String toString() {
    return 'AuthEvent.signUP(authModel: $authModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUPImpl &&
            (identical(other.authModel, authModel) ||
                other.authModel == authModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUPImplCopyWith<_$SignUPImpl> get copyWith =>
      __$$SignUPImplCopyWithImpl<_$SignUPImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneModel phoneModel) getOtp,
    required TResult Function(OtpModel otpModel) verifyOtp,
    required TResult Function(AuthModel authModel) signIn,
    required TResult Function(AuthModel authModel) signUP,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
  }) {
    return signUP(authModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneModel phoneModel)? getOtp,
    TResult? Function(OtpModel otpModel)? verifyOtp,
    TResult? Function(AuthModel authModel)? signIn,
    TResult? Function(AuthModel authModel)? signUP,
    TResult? Function()? googleSignIn,
    TResult? Function()? signOut,
  }) {
    return signUP?.call(authModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneModel phoneModel)? getOtp,
    TResult Function(OtpModel otpModel)? verifyOtp,
    TResult Function(AuthModel authModel)? signIn,
    TResult Function(AuthModel authModel)? signUP,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signUP != null) {
      return signUP(authModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOtp value) getOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUP value) signUP,
    required TResult Function(GoogleSignIn value) googleSignIn,
    required TResult Function(SignOut value) signOut,
  }) {
    return signUP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOtp value)? getOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUP value)? signUP,
    TResult? Function(GoogleSignIn value)? googleSignIn,
    TResult? Function(SignOut value)? signOut,
  }) {
    return signUP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOtp value)? getOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUP value)? signUP,
    TResult Function(GoogleSignIn value)? googleSignIn,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signUP != null) {
      return signUP(this);
    }
    return orElse();
  }
}

abstract class SignUP implements AuthEvent {
  const factory SignUP({required final AuthModel authModel}) = _$SignUPImpl;

  AuthModel get authModel;
  @JsonKey(ignore: true)
  _$$SignUPImplCopyWith<_$SignUPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoogleSignInImplCopyWith<$Res> {
  factory _$$GoogleSignInImplCopyWith(
          _$GoogleSignInImpl value, $Res Function(_$GoogleSignInImpl) then) =
      __$$GoogleSignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleSignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GoogleSignInImpl>
    implements _$$GoogleSignInImplCopyWith<$Res> {
  __$$GoogleSignInImplCopyWithImpl(
      _$GoogleSignInImpl _value, $Res Function(_$GoogleSignInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoogleSignInImpl implements GoogleSignIn {
  const _$GoogleSignInImpl();

  @override
  String toString() {
    return 'AuthEvent.googleSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoogleSignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneModel phoneModel) getOtp,
    required TResult Function(OtpModel otpModel) verifyOtp,
    required TResult Function(AuthModel authModel) signIn,
    required TResult Function(AuthModel authModel) signUP,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
  }) {
    return googleSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneModel phoneModel)? getOtp,
    TResult? Function(OtpModel otpModel)? verifyOtp,
    TResult? Function(AuthModel authModel)? signIn,
    TResult? Function(AuthModel authModel)? signUP,
    TResult? Function()? googleSignIn,
    TResult? Function()? signOut,
  }) {
    return googleSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneModel phoneModel)? getOtp,
    TResult Function(OtpModel otpModel)? verifyOtp,
    TResult Function(AuthModel authModel)? signIn,
    TResult Function(AuthModel authModel)? signUP,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (googleSignIn != null) {
      return googleSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOtp value) getOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUP value) signUP,
    required TResult Function(GoogleSignIn value) googleSignIn,
    required TResult Function(SignOut value) signOut,
  }) {
    return googleSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOtp value)? getOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUP value)? signUP,
    TResult? Function(GoogleSignIn value)? googleSignIn,
    TResult? Function(SignOut value)? signOut,
  }) {
    return googleSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOtp value)? getOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUP value)? signUP,
    TResult Function(GoogleSignIn value)? googleSignIn,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (googleSignIn != null) {
      return googleSignIn(this);
    }
    return orElse();
  }
}

abstract class GoogleSignIn implements AuthEvent {
  const factory GoogleSignIn() = _$GoogleSignInImpl;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PhoneModel phoneModel) getOtp,
    required TResult Function(OtpModel otpModel) verifyOtp,
    required TResult Function(AuthModel authModel) signIn,
    required TResult Function(AuthModel authModel) signUP,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PhoneModel phoneModel)? getOtp,
    TResult? Function(OtpModel otpModel)? verifyOtp,
    TResult? Function(AuthModel authModel)? signIn,
    TResult? Function(AuthModel authModel)? signUP,
    TResult? Function()? googleSignIn,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PhoneModel phoneModel)? getOtp,
    TResult Function(OtpModel otpModel)? verifyOtp,
    TResult Function(AuthModel authModel)? signIn,
    TResult Function(AuthModel authModel)? signUP,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOtp value) getOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUP value) signUP,
    required TResult Function(GoogleSignIn value) googleSignIn,
    required TResult Function(SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOtp value)? getOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignUP value)? signUP,
    TResult? Function(GoogleSignIn value)? googleSignIn,
    TResult? Function(SignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOtp value)? getOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUP value)? signUP,
    TResult Function(GoogleSignIn value)? googleSignIn,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements AuthEvent {
  const factory SignOut() = _$SignOutImpl;
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get otpSuccess => throw _privateConstructorUsedError;
  bool? get logOutSuccess => throw _privateConstructorUsedError;
  bool? get signUpSuccess => throw _privateConstructorUsedError;
  bool? get signInSuccess => throw _privateConstructorUsedError;
  String? get otpVerificationId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      bool? otpSuccess,
      bool? logOutSuccess,
      bool? signUpSuccess,
      bool? signInSuccess,
      String? otpVerificationId});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? message = freezed,
    Object? otpSuccess = freezed,
    Object? logOutSuccess = freezed,
    Object? signUpSuccess = freezed,
    Object? signInSuccess = freezed,
    Object? otpVerificationId = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      otpSuccess: freezed == otpSuccess
          ? _value.otpSuccess
          : otpSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      logOutSuccess: freezed == logOutSuccess
          ? _value.logOutSuccess
          : logOutSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      signUpSuccess: freezed == signUpSuccess
          ? _value.signUpSuccess
          : signUpSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      signInSuccess: freezed == signInSuccess
          ? _value.signInSuccess
          : signInSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      otpVerificationId: freezed == otpVerificationId
          ? _value.otpVerificationId
          : otpVerificationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      bool? otpSuccess,
      bool? logOutSuccess,
      bool? signUpSuccess,
      bool? signInSuccess,
      String? otpVerificationId});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? message = freezed,
    Object? otpSuccess = freezed,
    Object? logOutSuccess = freezed,
    Object? signUpSuccess = freezed,
    Object? signInSuccess = freezed,
    Object? otpVerificationId = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      otpSuccess: freezed == otpSuccess
          ? _value.otpSuccess
          : otpSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      logOutSuccess: freezed == logOutSuccess
          ? _value.logOutSuccess
          : logOutSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      signUpSuccess: freezed == signUpSuccess
          ? _value.signUpSuccess
          : signUpSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      signInSuccess: freezed == signInSuccess
          ? _value.signInSuccess
          : signInSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      otpVerificationId: freezed == otpVerificationId
          ? _value.otpVerificationId
          : otpVerificationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      this.message,
      this.otpSuccess,
      this.logOutSuccess,
      this.signUpSuccess,
      this.signInSuccess,
      this.otpVerificationId});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final bool? otpSuccess;
  @override
  final bool? logOutSuccess;
  @override
  final bool? signUpSuccess;
  @override
  final bool? signInSuccess;
  @override
  final String? otpVerificationId;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, hasError: $hasError, message: $message, otpSuccess: $otpSuccess, logOutSuccess: $logOutSuccess, signUpSuccess: $signUpSuccess, signInSuccess: $signInSuccess, otpVerificationId: $otpVerificationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.otpSuccess, otpSuccess) ||
                other.otpSuccess == otpSuccess) &&
            (identical(other.logOutSuccess, logOutSuccess) ||
                other.logOutSuccess == logOutSuccess) &&
            (identical(other.signUpSuccess, signUpSuccess) ||
                other.signUpSuccess == signUpSuccess) &&
            (identical(other.signInSuccess, signInSuccess) ||
                other.signInSuccess == signInSuccess) &&
            (identical(other.otpVerificationId, otpVerificationId) ||
                other.otpVerificationId == otpVerificationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      message,
      otpSuccess,
      logOutSuccess,
      signUpSuccess,
      signInSuccess,
      otpVerificationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AuthState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      final String? message,
      final bool? otpSuccess,
      final bool? logOutSuccess,
      final bool? signUpSuccess,
      final bool? signInSuccess,
      final String? otpVerificationId}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  bool? get otpSuccess;
  @override
  bool? get logOutSuccess;
  @override
  bool? get signUpSuccess;
  @override
  bool? get signInSuccess;
  @override
  String? get otpVerificationId;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
