
import 'package:eejar/feature/auth/entity/resend_otp/resend_otp_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'resend_otp_state.freezed.dart';

@freezed
class ResendOtpState<T> with _$ResendOtpState {
  const factory ResendOtpState.idel() = Idel<T>;

  const factory ResendOtpState.loading() = Loading<T>;

  const factory ResendOtpState.success(ResendOtpEntity data) = Success<T>;

  const factory ResendOtpState.error( networkExceptions) = Error<T>;


}


