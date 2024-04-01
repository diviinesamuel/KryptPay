import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    required String email,
    @Default('') String passcode,
    @Default('') String documentID,
    @Default('') String fiatCurrency,
  }) = _UserEntity;

  const UserEntity._();

  factory UserEntity.fromJson(Map<String, Object?> json) => _$UserEntityFromJson(json);
}
