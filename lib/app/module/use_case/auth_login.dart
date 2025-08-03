import 'package:presensi_pegawai_flutter/app/module/repository/auth_repository.dart';
import 'package:presensi_pegawai_flutter/core/network/data_state.dart';
import 'package:presensi_pegawai_flutter/core/use_case/app_use_case.dart';
import 'package:presensi_pegawai_flutter/app/module/entity/auth.dart';

class AuthLoginUseCase extends AppUseCase<Future<DataState>, AuthEntity> {
  final AuthRepository _authRepository;

  AuthLoginUseCase(this._authRepository);

  @override
  Future<DataState> call({AuthEntity? param}) {
    return _authRepository.login(param!);
  }
}
