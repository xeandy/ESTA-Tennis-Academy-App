// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDataDTO _$UserDataDTOFromJson(Map<String, dynamic> json) {
  return _UserDataDTO.fromJson(json);
}

/// @nodoc
class _$UserDataDTOTearOff {
  const _$UserDataDTOTearOff();

  _UserDataDTO call(
      {required String? userName,
      required String? email,
      required String? userId,
      @JsonKey(ignore: false) required String role,
      required String? imgUrl,
      required List<ProfileAspDto> asp,
      required List<ProfileCampDto> camp,
      required List<ProfileAdtServiceDto> adtservice}) {
    return _UserDataDTO(
      userName: userName,
      email: email,
      userId: userId,
      role: role,
      imgUrl: imgUrl,
      asp: asp,
      camp: camp,
      adtservice: adtservice,
    );
  }

  UserDataDTO fromJson(Map<String, Object> json) {
    return UserDataDTO.fromJson(json);
  }
}

/// @nodoc
const $UserDataDTO = _$UserDataDTOTearOff();

/// @nodoc
mixin _$UserDataDTO {
  String? get userName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: false)
  String get role => throw _privateConstructorUsedError;
  String? get imgUrl => throw _privateConstructorUsedError;
  List<ProfileAspDto> get asp => throw _privateConstructorUsedError;
  List<ProfileCampDto> get camp => throw _privateConstructorUsedError;
  List<ProfileAdtServiceDto> get adtservice =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataDTOCopyWith<UserDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataDTOCopyWith<$Res> {
  factory $UserDataDTOCopyWith(
          UserDataDTO value, $Res Function(UserDataDTO) then) =
      _$UserDataDTOCopyWithImpl<$Res>;
  $Res call(
      {String? userName,
      String? email,
      String? userId,
      @JsonKey(ignore: false) String role,
      String? imgUrl,
      List<ProfileAspDto> asp,
      List<ProfileCampDto> camp,
      List<ProfileAdtServiceDto> adtservice});
}

/// @nodoc
class _$UserDataDTOCopyWithImpl<$Res> implements $UserDataDTOCopyWith<$Res> {
  _$UserDataDTOCopyWithImpl(this._value, this._then);

  final UserDataDTO _value;
  // ignore: unused_field
  final $Res Function(UserDataDTO) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? email = freezed,
    Object? userId = freezed,
    Object? role = freezed,
    Object? imgUrl = freezed,
    Object? asp = freezed,
    Object? camp = freezed,
    Object? adtservice = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      asp: asp == freezed
          ? _value.asp
          : asp // ignore: cast_nullable_to_non_nullable
              as List<ProfileAspDto>,
      camp: camp == freezed
          ? _value.camp
          : camp // ignore: cast_nullable_to_non_nullable
              as List<ProfileCampDto>,
      adtservice: adtservice == freezed
          ? _value.adtservice
          : adtservice // ignore: cast_nullable_to_non_nullable
              as List<ProfileAdtServiceDto>,
    ));
  }
}

/// @nodoc
abstract class _$UserDataDTOCopyWith<$Res>
    implements $UserDataDTOCopyWith<$Res> {
  factory _$UserDataDTOCopyWith(
          _UserDataDTO value, $Res Function(_UserDataDTO) then) =
      __$UserDataDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? userName,
      String? email,
      String? userId,
      @JsonKey(ignore: false) String role,
      String? imgUrl,
      List<ProfileAspDto> asp,
      List<ProfileCampDto> camp,
      List<ProfileAdtServiceDto> adtservice});
}

/// @nodoc
class __$UserDataDTOCopyWithImpl<$Res> extends _$UserDataDTOCopyWithImpl<$Res>
    implements _$UserDataDTOCopyWith<$Res> {
  __$UserDataDTOCopyWithImpl(
      _UserDataDTO _value, $Res Function(_UserDataDTO) _then)
      : super(_value, (v) => _then(v as _UserDataDTO));

  @override
  _UserDataDTO get _value => super._value as _UserDataDTO;

  @override
  $Res call({
    Object? userName = freezed,
    Object? email = freezed,
    Object? userId = freezed,
    Object? role = freezed,
    Object? imgUrl = freezed,
    Object? asp = freezed,
    Object? camp = freezed,
    Object? adtservice = freezed,
  }) {
    return _then(_UserDataDTO(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      asp: asp == freezed
          ? _value.asp
          : asp // ignore: cast_nullable_to_non_nullable
              as List<ProfileAspDto>,
      camp: camp == freezed
          ? _value.camp
          : camp // ignore: cast_nullable_to_non_nullable
              as List<ProfileCampDto>,
      adtservice: adtservice == freezed
          ? _value.adtservice
          : adtservice // ignore: cast_nullable_to_non_nullable
              as List<ProfileAdtServiceDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDataDTO extends _UserDataDTO {
  const _$_UserDataDTO(
      {required this.userName,
      required this.email,
      required this.userId,
      @JsonKey(ignore: false) required this.role,
      required this.imgUrl,
      required this.asp,
      required this.camp,
      required this.adtservice})
      : super._();

  factory _$_UserDataDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDataDTOFromJson(json);

  @override
  final String? userName;
  @override
  final String? email;
  @override
  final String? userId;
  @override
  @JsonKey(ignore: false)
  final String role;
  @override
  final String? imgUrl;
  @override
  final List<ProfileAspDto> asp;
  @override
  final List<ProfileCampDto> camp;
  @override
  final List<ProfileAdtServiceDto> adtservice;

  @override
  String toString() {
    return 'UserDataDTO(userName: $userName, email: $email, userId: $userId, role: $role, imgUrl: $imgUrl, asp: $asp, camp: $camp, adtservice: $adtservice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDataDTO &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.imgUrl, imgUrl) ||
                const DeepCollectionEquality().equals(other.imgUrl, imgUrl)) &&
            (identical(other.asp, asp) ||
                const DeepCollectionEquality().equals(other.asp, asp)) &&
            (identical(other.camp, camp) ||
                const DeepCollectionEquality().equals(other.camp, camp)) &&
            (identical(other.adtservice, adtservice) ||
                const DeepCollectionEquality()
                    .equals(other.adtservice, adtservice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(imgUrl) ^
      const DeepCollectionEquality().hash(asp) ^
      const DeepCollectionEquality().hash(camp) ^
      const DeepCollectionEquality().hash(adtservice);

  @JsonKey(ignore: true)
  @override
  _$UserDataDTOCopyWith<_UserDataDTO> get copyWith =>
      __$UserDataDTOCopyWithImpl<_UserDataDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDataDTOToJson(this);
  }
}

abstract class _UserDataDTO extends UserDataDTO {
  const factory _UserDataDTO(
      {required String? userName,
      required String? email,
      required String? userId,
      @JsonKey(ignore: false) required String role,
      required String? imgUrl,
      required List<ProfileAspDto> asp,
      required List<ProfileCampDto> camp,
      required List<ProfileAdtServiceDto> adtservice}) = _$_UserDataDTO;
  const _UserDataDTO._() : super._();

  factory _UserDataDTO.fromJson(Map<String, dynamic> json) =
      _$_UserDataDTO.fromJson;

  @override
  String? get userName => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: false)
  String get role => throw _privateConstructorUsedError;
  @override
  String? get imgUrl => throw _privateConstructorUsedError;
  @override
  List<ProfileAspDto> get asp => throw _privateConstructorUsedError;
  @override
  List<ProfileCampDto> get camp => throw _privateConstructorUsedError;
  @override
  List<ProfileAdtServiceDto> get adtservice =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDataDTOCopyWith<_UserDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
