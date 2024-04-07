part of 'sign_up_screen_cubit.dart';

@freezed
class SignUpScreenState with _$SignUpScreenState {
  const factory SignUpScreenState.initial() = _Initial;
  const factory SignUpScreenState.loading() = _Loading;
  const factory SignUpScreenState.accountCreated() = _AccountCreated;
  const factory SignUpScreenState.accountInfoUpdated() = _AccountInfoUpdated;
  const factory SignUpScreenState.error(String errorMessage) = _Error;
}
