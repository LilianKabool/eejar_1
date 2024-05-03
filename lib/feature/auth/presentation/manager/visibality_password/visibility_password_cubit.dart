import 'package:bloc/bloc.dart';
import 'package:eejar/feature/auth/presentation/manager/visibality_password/visibility_password_state.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
@injectable
class VisibilityPasswordCubit extends Cubit<VisibilityPasswordState> {
  VisibilityPasswordCubit() : super(const Initial());
  IconData suffix = (Icons.visibility);
  bool password = true  ;
  emitChangeVisibilityPassword( ) {
    emit(VisibilityPasswordState.initial());
   password = !password;
    suffix = password ? Icons.visibility_off: Icons.visibility  ;
    emit(const VisibilityPasswordState.changevisibilityPassword());

  }

}
