
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../network_exceptions.dart';

import '../../../entity/login/login_entity.dart';
part 'auth_log_in_state.freezed.dart';
@freezed

class UserLogInState with _$UserLogInState {
  const factory UserLogInState.initial() = _Initial;
  const factory UserLogInState.loading() = Loading;

  const factory UserLogInState.success(LoginEntity loginEntity) = Success;

  const factory UserLogInState.error(NetworkExceptions networkExceptions) =
      Error;}
