import 'package:presensi_pegawai_flutter/app/module/entity/attendance.dart';
import 'package:presensi_pegawai_flutter/app/module/repository/attendance_repository.dart';
import 'package:presensi_pegawai_flutter/core/network/data_state.dart';
import 'package:presensi_pegawai_flutter/core/use_case/app_use_case.dart';

class AttendanceGetMonthUseCase
    extends AppUseCase<Future<DataState<List<AttendanceEntity>>>, void> {
  final AttendanceRepository _attendanceRepository;

  AttendanceGetMonthUseCase(this._attendanceRepository);

  @override
  Future<DataState<List<AttendanceEntity>>> call({void param}) {
    return _attendanceRepository.getThisMonth();
  }
}
