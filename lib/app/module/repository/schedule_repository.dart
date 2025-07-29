import 'package:presensi_pegawai_flutter/app/module/entity/schedule.dart';
import 'package:presensi_pegawai_flutter/core/network/data_state.dart';

abstract class ScheduleRepository {
  Future<DataState<ScheduleEntity>> get();
}
