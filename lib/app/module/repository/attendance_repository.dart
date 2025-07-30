import 'package:presensi_pegawai_flutter/app/module/entity/attendance.dart';
import 'package:presensi_pegawai_flutter/core/network/data_state.dart';

abstract class AttendanceRepository {
  Future<DataState<AttendanceEntity?>> getToday();
  Future<DataState<List<AttendanceEntity>>> getThisMonth();
  Future<DataState> sendAttendance(AttendanceParamEntity param);
}
