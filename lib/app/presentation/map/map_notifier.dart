import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:presensi_pegawai_flutter/app/module/entity/schedule.dart';
import 'package:presensi_pegawai_flutter/app/module/use_case/schedule_get.dart';
import 'package:presensi_pegawai_flutter/core/provider/app_provider.dart';

class MapNotifier extends AppProvider {
  final ScheduleGetUseCase _scheduleGetUseCase;
  MapNotifier(this._scheduleGetUseCase) {
    init();
  }

  MapController _mapController = MapController.withPosition(
    initPosition: GeoPoint(
      latitude: -7.0970831631872,
      longitude: 110.24789629814,
    ),
  );
  late ScheduleEntity _schedule;
  late CircleOSM
  _circle; //CircleOSM untuk menyimpan data lokasi kantor dan radiusnya

  MapController get mapController => _mapController;

  ScheduleEntity get schedule => _schedule;

  @override
  void init() async {
    await _getSchedule();
  }

  _getSchedule() async {
    showLoading();
    final response = await _scheduleGetUseCase();
    if (response.success) {
      _schedule = response.data!;
      _circle = CircleOSM(
        key: 'Center-Point',
        centerPoint: GeoPoint(
          latitude: _schedule.office.latitude,
          longitude: _schedule.office.longitude,
        ),
        radius: _schedule.office.radius,
        color: Colors.red.withOpacity(0.5),
        strokeWidth: 2,
        borderColor: Colors.red,
      );
    } else {
      errorMessage = response.message;
    }
    hideLoading();
  }

  mapIsReady() async {
    await mapController.drawCircle(_circle);
  }
}
