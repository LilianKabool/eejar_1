


import 'package:eejar/feature/auth/entity/reset_password/reset_password_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../network_exceptions.dart';




part 'reset_password_state.freezed.dart';

@freezed
class ResetPasswordState<T> with _$ResetPasswordState {
  const factory ResetPasswordState.idel() = Idel<T>;

  const factory ResetPasswordState.loading() = Loading<T>;

  const factory ResetPasswordState.success(ResetPasswordEntity  data) = Success;

  const factory ResetPasswordState.error(NetworkExceptions networkExceptions) = Error<T>;


}


