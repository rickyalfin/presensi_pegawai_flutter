import 'package:presensi_pegawai_flutter/app/module/entity/auth.dart';
import 'package:presensi_pegawai_flutter/core/network/data_state.dart';

abstract class AuthRepository {
  Future<DataState> login(AuthEntity param);
}
