
import 'package:eejar/feature/auth/entity/resend_otp/resend_otp_entity.dart';
import 'package:eejar/feature/auth/entity/verify_otp/verify_otp_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../network_exceptions.dart';




part 'verifiy_code_state.freezed.dart';

@freezed
class VerifiyCodeState<T> with _$VerifiyCodeState {
  const factory VerifiyCodeState.idel() = Idel<T>;

  const factory VerifiyCodeState.loading() = Loading<T>;

  const factory VerifiyCodeState.success(VerifyOtpEntity data) = Success;

  const factory VerifiyCodeState.error( NetworkExceptions networkExceptions) = Error<T>;


}


