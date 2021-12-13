// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String phone,
      required String email,
      required int id,
      required String fullName,
      required String iamge}) {
    return _User(
      phone: phone,
      email: email,
      id: id,
      fullName: fullName,
      iamge: iamge,
    );
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get iamge => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String phone, String email, int id, String fullName, String iamge});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? phone = freezed,
    Object? email = freezed,
    Object? id = freezed,
    Object? fullName = freezed,
    Object? iamge = freezed,
  }) {
    return _then(_value.copyWith(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      iamge: iamge == freezed
          ? _value.iamge
          : iamge // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String phone, String email, int id, String fullName, String iamge});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? phone = freezed,
    Object? email = freezed,
    Object? id = freezed,
    Object? fullName = freezed,
    Object? iamge = freezed,
  }) {
    return _then(_User(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      iamge: iamge == freezed
          ? _value.iamge
          : iamge // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_User extends _User {
  const _$_User(
      {required this.phone,
      required this.email,
      required this.id,
      required this.fullName,
      required this.iamge})
      : super._();

  @override
  final String phone;
  @override
  final String email;
  @override
  final int id;
  @override
  final String fullName;
  @override
  final String iamge;

  @override
  String toString() {
    return 'User(phone: $phone, email: $email, id: $id, fullName: $fullName, iamge: $iamge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.iamge, iamge) || other.iamge == iamge));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phone, email, id, fullName, iamge);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User extends User {
  const factory _User(
      {required String phone,
      required String email,
      required int id,
      required String fullName,
      required String iamge}) = _$_User;
  const _User._() : super._();

  @override
  String get phone;
  @override
  String get email;
  @override
  int get id;
  @override
  String get fullName;
  @override
  String get iamge;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
