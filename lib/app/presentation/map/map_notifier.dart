import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:geolocator/geolocator.dart';
import 'package:presensi_pegawai_flutter/app/module/entity/schedule.dart';
import 'package:presensi_pegawai_flutter/app/module/use_case/schedule_get.dart';
import 'package:presensi_pegawai_flutter/core/helper/location_helper.dart';
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
  bool _isGrantedLocation = false;
  bool _isEnabledLocation = false;
  late StreamSubscription<Position> _streamCurrentLocation;

  GeoPoint? _currentLocation;

  MapController get mapController => _mapController;

  ScheduleEntity get schedule => _schedule;

  bool get isGrantedLocation => _isGrantedLocation;
  bool get isEnabledLocation => _isEnabledLocation;

  @override
  void init() async {
    await _getEnableAndPermission();
    await _getSchedule();
  }

  _getEnableAndPermission() async {
    showLoading();
    _isGrantedLocation = await LocationHelper.isGrantedLocationPermission();
    if (_isGrantedLocation) {
      _isEnabledLocation = await LocationHelper.isEnabledLocationService();
      if (!_isEnabledLocation) {
        errorMessage = 'Harap mengaktifkan GPS';
      }
    } else {
      errorMessage = 'Harap menyetujui permission';
    }
    hideLoading();
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

  checkLocationPermission() async {
    _isGrantedLocation = await LocationHelper.isGrantedLocationPermission();
    if (!_isGrantedLocation && !isDispose) {
      checkLocationPermission();
    } else {
      errorMessage = '';
      init();
    }
  }

  checkLocationService() async {
    _isEnabledLocation = await LocationHelper.isEnabledLocationService();
    if (!_isEnabledLocation && !isDispose) {
      checkLocationService();
    } else {
      errorMessage = '';
      init();
    }
  }

  mapIsReady() async {
    _openStreamCurrentLocation();
    await mapController.drawCircle(_circle);
  }

  _openStreamCurrentLocation() async {
    _streamCurrentLocation = Geolocator.getPositionStream().listen((position) {
      if (!isDispose) {
        if (_currentLocation != null)
          _mapController.removeMarker(_currentLocation!);
        _currentLocation = GeoPoint(
          latitude: position.latitude,
          longitude: position.longitude,
        );
        _mapController.addMarker(
          _currentLocation!,
          markerIcon: MarkerIcon(
            icon: Icon(Icons.account_circle, color: Colors.red, size: 30),
          ),
        );
        _mapController.moveTo(_currentLocation!, animate: true);
      } else {
        _closeStreamCurrentLocation();
      }
    });
  }

  _closeStreamCurrentLocation() {
    _streamCurrentLocation.cancel();
  }
}
