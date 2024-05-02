// ignore_for_file: avoid_print, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:praktikum_08/repossitories/auth_repo.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  final _repo = AuthRepo();

  Future<void> register(
      {required String email, required String password}) async {
    emit(RegisterLoading());

    try {
      await _repo.register(email: email, password: password);

      emit(RegisterSuccess('Berhasil!'));
    } catch (e) {
      print(e);
      emit(RegisterFailure(e.toString()));
    }
  }
}