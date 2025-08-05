import 'package:presensi_pegawai_flutter/app/module/entity/schedule.dart';
import 'package:presensi_pegawai_flutter/app/module/repository/schedule_repository.dart';
import 'package:presensi_pegawai_flutter/core/network/data_state.dart';
import 'package:presensi_pegawai_flutter/core/use_case/app_use_case.dart';

class ScheduleGetUseCase
    extends AppUseCase<Future<DataState<ScheduleEntity>>, void> {
  final ScheduleRepository _scheduleRepository;

  ScheduleGetUseCase(this._scheduleRepository);

  @override
  Future<DataState<ScheduleEntity>> call({void param}) {
    return _scheduleRepository.get();
  }
}
