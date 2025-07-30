import 'dart:convert';

import 'package:presensi_pegawai_flutter/app/data/model/attendance.dart';
import 'package:presensi_pegawai_flutter/app/data/source/attendance_api_service.dart';
import 'package:presensi_pegawai_flutter/app/module/entity/attendance.dart';
import 'package:presensi_pegawai_flutter/app/module/repository/attendance_repository.dart';
import 'package:presensi_pegawai_flutter/core/network/data_state.dart';

class AttendanceRepositoryImpl extends AttendanceRepository {
  final AttendanceApiService _attendanceApiService;

  AttendanceRepositoryImpl(this._attendanceApiService);

  @override
  Future<DataState<List<AttendanceEntity>>> getThisMonth() {
    return handleResponse(() => _attendanceApiService.getAttendanceToday(), (
      json,
    ) {
      final attendanceModel = AttendanceModel.fromJson(json);
      return attendanceModel.thisMonth;
    });
  }

  @override
  Future<DataState<AttendanceEntity?>> getToday() {
    return handleResponse(() => _attendanceApiService.getAttendanceToday(), (
      json,
    ) {
      final attendanceModel = AttendanceModel.fromJson(json);
      return attendanceModel.today;
    });
  }

  @override
  Future<DataState> sendAttendance(AttendanceParamEntity param) {
    return handleResponse(
      () => _attendanceApiService.sendAttendance(body: param.toJson()),
      (json) => null,
    );
  }
}
