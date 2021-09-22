// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaymentStateTearOff {
  const _$PaymentStateTearOff();

  _PaymentState call(
      {required FirestoreFailure firestoreFailure,
      required UserData userData,
      required Map<String, dynamic>? paymentSheetData,
      required bool isSuccesfull,
      required bool isStripeException,
      required String stripeException,
      required bool isNotComplete}) {
    return _PaymentState(
      firestoreFailure: firestoreFailure,
      userData: userData,
      paymentSheetData: paymentSheetData,
      isSuccesfull: isSuccesfull,
      isStripeException: isStripeException,
      stripeException: stripeException,
      isNotComplete: isNotComplete,
    );
  }
}

/// @nodoc
const $PaymentState = _$PaymentStateTearOff();

/// @nodoc
mixin _$PaymentState {
  FirestoreFailure get firestoreFailure => throw _privateConstructorUsedError;
  UserData get userData => throw _privateConstructorUsedError;
  Map<String, dynamic>? get paymentSheetData =>
      throw _privateConstructorUsedError;
  bool get isSuccesfull => throw _privateConstructorUsedError;
  bool get isStripeException => throw _privateConstructorUsedError;
  String get stripeException => throw _privateConstructorUsedError;
  bool get isNotComplete => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res>;
  $Res call(
      {FirestoreFailure firestoreFailure,
      UserData userData,
      Map<String, dynamic>? paymentSheetData,
      bool isSuccesfull,
      bool isStripeException,
      String stripeException,
      bool isNotComplete});

  $FirestoreFailureCopyWith<$Res> get firestoreFailure;
  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res> implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  final PaymentState _value;
  // ignore: unused_field
  final $Res Function(PaymentState) _then;

  @override
  $Res call({
    Object? firestoreFailure = freezed,
    Object? userData = freezed,
    Object? paymentSheetData = freezed,
    Object? isSuccesfull = freezed,
    Object? isStripeException = freezed,
    Object? stripeException = freezed,
    Object? isNotComplete = freezed,
  }) {
    return _then(_value.copyWith(
      firestoreFailure: firestoreFailure == freezed
          ? _value.firestoreFailure
          : firestoreFailure // ignore: cast_nullable_to_non_nullable
              as FirestoreFailure,
      userData: userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
      paymentSheetData: paymentSheetData == freezed
          ? _value.paymentSheetData
          : paymentSheetData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      isSuccesfull: isSuccesfull == freezed
          ? _value.isSuccesfull
          : isSuccesfull // ignore: cast_nullable_to_non_nullable
              as bool,
      isStripeException: isStripeException == freezed
          ? _value.isStripeException
          : isStripeException // ignore: cast_nullable_to_non_nullable
              as bool,
      stripeException: stripeException == freezed
          ? _value.stripeException
          : stripeException // ignore: cast_nullable_to_non_nullable
              as String,
      isNotComplete: isNotComplete == freezed
          ? _value.isNotComplete
          : isNotComplete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $FirestoreFailureCopyWith<$Res> get firestoreFailure {
    return $FirestoreFailureCopyWith<$Res>(_value.firestoreFailure, (value) {
      return _then(_value.copyWith(firestoreFailure: value));
    });
  }

  @override
  $UserDataCopyWith<$Res> get userData {
    return $UserDataCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }
}

/// @nodoc
abstract class _$PaymentStateCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$PaymentStateCopyWith(
          _PaymentState value, $Res Function(_PaymentState) then) =
      __$PaymentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {FirestoreFailure firestoreFailure,
      UserData userData,
      Map<String, dynamic>? paymentSheetData,
      bool isSuccesfull,
      bool isStripeException,
      String stripeException,
      bool isNotComplete});

  @override
  $FirestoreFailureCopyWith<$Res> get firestoreFailure;
  @override
  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class __$PaymentStateCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
    implements _$PaymentStateCopyWith<$Res> {
  __$PaymentStateCopyWithImpl(
      _PaymentState _value, $Res Function(_PaymentState) _then)
      : super(_value, (v) => _then(v as _PaymentState));

  @override
  _PaymentState get _value => super._value as _PaymentState;

  @override
  $Res call({
    Object? firestoreFailure = freezed,
    Object? userData = freezed,
    Object? paymentSheetData = freezed,
    Object? isSuccesfull = freezed,
    Object? isStripeException = freezed,
    Object? stripeException = freezed,
    Object? isNotComplete = freezed,
  }) {
    return _then(_PaymentState(
      firestoreFailure: firestoreFailure == freezed
          ? _value.firestoreFailure
          : firestoreFailure // ignore: cast_nullable_to_non_nullable
              as FirestoreFailure,
      userData: userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
      paymentSheetData: paymentSheetData == freezed
          ? _value.paymentSheetData
          : paymentSheetData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      isSuccesfull: isSuccesfull == freezed
          ? _value.isSuccesfull
          : isSuccesfull // ignore: cast_nullable_to_non_nullable
              as bool,
      isStripeException: isStripeException == freezed
          ? _value.isStripeException
          : isStripeException // ignore: cast_nullable_to_non_nullable
              as bool,
      stripeException: stripeException == freezed
          ? _value.stripeException
          : stripeException // ignore: cast_nullable_to_non_nullable
              as String,
      isNotComplete: isNotComplete == freezed
          ? _value.isNotComplete
          : isNotComplete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PaymentState implements _PaymentState {
  const _$_PaymentState(
      {required this.firestoreFailure,
      required this.userData,
      required this.paymentSheetData,
      required this.isSuccesfull,
      required this.isStripeException,
      required this.stripeException,
      required this.isNotComplete});

  @override
  final FirestoreFailure firestoreFailure;
  @override
  final UserData userData;
  @override
  final Map<String, dynamic>? paymentSheetData;
  @override
  final bool isSuccesfull;
  @override
  final bool isStripeException;
  @override
  final String stripeException;
  @override
  final bool isNotComplete;

  @override
  String toString() {
    return 'PaymentState(firestoreFailure: $firestoreFailure, userData: $userData, paymentSheetData: $paymentSheetData, isSuccesfull: $isSuccesfull, isStripeException: $isStripeException, stripeException: $stripeException, isNotComplete: $isNotComplete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentState &&
            (identical(other.firestoreFailure, firestoreFailure) ||
                const DeepCollectionEquality()
                    .equals(other.firestoreFailure, firestoreFailure)) &&
            (identical(other.userData, userData) ||
                const DeepCollectionEquality()
                    .equals(other.userData, userData)) &&
            (identical(other.paymentSheetData, paymentSheetData) ||
                const DeepCollectionEquality()
                    .equals(other.paymentSheetData, paymentSheetData)) &&
            (identical(other.isSuccesfull, isSuccesfull) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccesfull, isSuccesfull)) &&
            (identical(other.isStripeException, isStripeException) ||
                const DeepCollectionEquality()
                    .equals(other.isStripeException, isStripeException)) &&
            (identical(other.stripeException, stripeException) ||
                const DeepCollectionEquality()
                    .equals(other.stripeException, stripeException)) &&
            (identical(other.isNotComplete, isNotComplete) ||
                const DeepCollectionEquality()
                    .equals(other.isNotComplete, isNotComplete)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firestoreFailure) ^
      const DeepCollectionEquality().hash(userData) ^
      const DeepCollectionEquality().hash(paymentSheetData) ^
      const DeepCollectionEquality().hash(isSuccesfull) ^
      const DeepCollectionEquality().hash(isStripeException) ^
      const DeepCollectionEquality().hash(stripeException) ^
      const DeepCollectionEquality().hash(isNotComplete);

  @JsonKey(ignore: true)
  @override
  _$PaymentStateCopyWith<_PaymentState> get copyWith =>
      __$PaymentStateCopyWithImpl<_PaymentState>(this, _$identity);
}

abstract class _PaymentState implements PaymentState {
  const factory _PaymentState(
      {required FirestoreFailure firestoreFailure,
      required UserData userData,
      required Map<String, dynamic>? paymentSheetData,
      required bool isSuccesfull,
      required bool isStripeException,
      required String stripeException,
      required bool isNotComplete}) = _$_PaymentState;

  @override
  FirestoreFailure get firestoreFailure => throw _privateConstructorUsedError;
  @override
  UserData get userData => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic>? get paymentSheetData =>
      throw _privateConstructorUsedError;
  @override
  bool get isSuccesfull => throw _privateConstructorUsedError;
  @override
  bool get isStripeException => throw _privateConstructorUsedError;
  @override
  String get stripeException => throw _privateConstructorUsedError;
  @override
  bool get isNotComplete => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaymentStateCopyWith<_PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}
