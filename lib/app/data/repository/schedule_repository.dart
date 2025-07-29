import 'dart:convert';

import 'package:presensi_pegawai_flutter/app/data/source/schedule_api_service.dart';
import 'package:presensi_pegawai_flutter/app/module/entity/schedule.dart';
import 'package:presensi_pegawai_flutter/app/module/repository/schedule_repository.dart';
import 'package:presensi_pegawai_flutter/core/network/data_state.dart';

class ScheduleRepositoryImpl extends ScheduleRepository {
  final ScheduleApiService _scheduleApiService;

  ScheduleRepositoryImpl(this._scheduleApiService);

  @override
  Future<DataState<ScheduleEntity>> get() {
    return handleResponse(() => _scheduleApiService.get(), (json) {
      return ScheduleEntity.fromJson(json);
    });
  }
}
