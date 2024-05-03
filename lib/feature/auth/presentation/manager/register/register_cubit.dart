import 'package:bloc/bloc.dart';
import 'package:eejar/feature/auth/presentation/manager/register/register_state.dart';


import 'package:injectable/injectable.dart';

import '../../../../../core/params/register_params.dart';
import '../../../repository/auth_repository.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  final AuthBaseRepository _authBaseRepository;

  RegisterCubit(this._authBaseRepository) : super(RegisterState.idel());

  emitRegister({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    emit(const RegisterState.loading());
    final response = await _authBaseRepository.register(RegisterParams(
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
    ));
    response.fold((l) => emit(RegisterState.error(l)),
        (r) => emit(RegisterState.success(r)));
  }
}
