import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String phone,
    required String email,
    required int id,
    required String fullName,
    required String iamge,
  }) = _User;
}
