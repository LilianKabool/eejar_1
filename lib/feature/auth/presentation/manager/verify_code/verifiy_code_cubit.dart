import 'package:bloc/bloc.dart';
import 'package:eejar/feature/auth/presentation/manager/verify_code/verifiy_code_state.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/params/verify_otp_params.dart';
import '../../../repository/auth_repository.dart';

@injectable
class VerifiyCodeCubit extends Cubit<VerifiyCodeState> {
  final AuthBaseRepository _authBaseRepository;

  VerifiyCodeCubit(this._authBaseRepository) : super(VerifiyCodeState.idel());

  emitVerifyCode({
    required String otp,
  }) async {
    emit(const VerifiyCodeState.loading());
    final response = await _authBaseRepository.verifyOtp(VerifyOtpParams(
      otp: otp,
    ));
    response.fold((l) => emit(VerifiyCodeState.error(l)),
        ( r) => emit(VerifiyCodeState.success(r)));
  }
}
