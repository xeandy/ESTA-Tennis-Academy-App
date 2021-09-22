// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'program_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProgramDTO _$ProgramDTOFromJson(Map<String, dynamic> json) {
  return _ProgramDTO.fromJson(json);
}

/// @nodoc
class _$ProgramDTOTearOff {
  const _$ProgramDTOTearOff();

  _ProgramDTO call(
      {required String? groupName, required List<SessionDTO>? session}) {
    return _ProgramDTO(
      groupName: groupName,
      session: session,
    );
  }

  ProgramDTO fromJson(Map<String, Object> json) {
    return ProgramDTO.fromJson(json);
  }
}

/// @nodoc
const $ProgramDTO = _$ProgramDTOTearOff();

/// @nodoc
mixin _$ProgramDTO {
  String? get groupName => throw _privateConstructorUsedError;
  List<SessionDTO>? get session => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramDTOCopyWith<ProgramDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramDTOCopyWith<$Res> {
  factory $ProgramDTOCopyWith(
          ProgramDTO value, $Res Function(ProgramDTO) then) =
      _$ProgramDTOCopyWithImpl<$Res>;
  $Res call({String? groupName, List<SessionDTO>? session});
}

/// @nodoc
class _$ProgramDTOCopyWithImpl<$Res> implements $ProgramDTOCopyWith<$Res> {
  _$ProgramDTOCopyWithImpl(this._value, this._then);

  final ProgramDTO _value;
  // ignore: unused_field
  final $Res Function(ProgramDTO) _then;

  @override
  $Res call({
    Object? groupName = freezed,
    Object? session = freezed,
  }) {
    return _then(_value.copyWith(
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as List<SessionDTO>?,
    ));
  }
}

/// @nodoc
abstract class _$ProgramDTOCopyWith<$Res> implements $ProgramDTOCopyWith<$Res> {
  factory _$ProgramDTOCopyWith(
          _ProgramDTO value, $Res Function(_ProgramDTO) then) =
      __$ProgramDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? groupName, List<SessionDTO>? session});
}

/// @nodoc
class __$ProgramDTOCopyWithImpl<$Res> extends _$ProgramDTOCopyWithImpl<$Res>
    implements _$ProgramDTOCopyWith<$Res> {
  __$ProgramDTOCopyWithImpl(
      _ProgramDTO _value, $Res Function(_ProgramDTO) _then)
      : super(_value, (v) => _then(v as _ProgramDTO));

  @override
  _ProgramDTO get _value => super._value as _ProgramDTO;

  @override
  $Res call({
    Object? groupName = freezed,
    Object? session = freezed,
  }) {
    return _then(_ProgramDTO(
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as List<SessionDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProgramDTO extends _ProgramDTO {
  const _$_ProgramDTO({required this.groupName, required this.session})
      : super._();

  factory _$_ProgramDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ProgramDTOFromJson(json);

  @override
  final String? groupName;
  @override
  final List<SessionDTO>? session;

  @override
  String toString() {
    return 'ProgramDTO(groupName: $groupName, session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProgramDTO &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.session, session) ||
                const DeepCollectionEquality().equals(other.session, session)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(session);

  @JsonKey(ignore: true)
  @override
  _$ProgramDTOCopyWith<_ProgramDTO> get copyWith =>
      __$ProgramDTOCopyWithImpl<_ProgramDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProgramDTOToJson(this);
  }
}

abstract class _ProgramDTO extends ProgramDTO {
  const factory _ProgramDTO(
      {required String? groupName,
      required List<SessionDTO>? session}) = _$_ProgramDTO;
  const _ProgramDTO._() : super._();

  factory _ProgramDTO.fromJson(Map<String, dynamic> json) =
      _$_ProgramDTO.fromJson;

  @override
  String? get groupName => throw _privateConstructorUsedError;
  @override
  List<SessionDTO>? get session => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProgramDTOCopyWith<_ProgramDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
