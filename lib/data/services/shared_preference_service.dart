import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:krypt/data/model/user_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class SharedPreferencesService {
  final SharedPreferences _sharedPreferences;
  static const _hasFinishedOnBoarding = 'has_finished_onBoarding';
  static const _userInfo = 'user_info';

  SharedPreferencesService(this._sharedPreferences);

  Future<void> clear() async {
    final bool hasOnBoarded = hasFinishedOnBoarding;
    await _sharedPreferences.clear();

    setHasFinishedOnBoarding(hasOnBoarded);
  }

  Future<bool> setHasFinishedOnBoarding(bool value) async {
    return await _sharedPreferences.setBool(_hasFinishedOnBoarding, value);
  }

  Future<bool> saveUserInfo(UserEntity userEntity) async {
    return await _sharedPreferences.setString(_userInfo, jsonEncode(userEntity));
  }

  UserEntity? get userEntity {
    final userJson = _sharedPreferences.getString(_userInfo);
    if (userJson == null) return null;
    return UserEntity.fromJson(jsonDecode(userJson));
  }

  bool get hasFinishedOnBoarding => _sharedPreferences.getBool(_hasFinishedOnBoarding) ?? false;
}
