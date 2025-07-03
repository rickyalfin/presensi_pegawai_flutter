import 'package:flutter/widgets.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:geolocator/geolocator.dart';
import 'package:presensi_pegawai_flutter/core/helper/dialog_helper.dart';

//fuction untuk mengecek apakah permission sudah disetujui atau belum
class LocationHelper {
  static Future<bool> isGrantedLocationPermission() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      return false;
    } else {
      return true;
    }
  }

  //function untuk mengecek apakah GPS sudah diaktifkan atau belum
  static Future<bool> isEnabledLocationService() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    return serviceEnabled;
  }

  //untuk membuka setting lokasi/gps
  static Future<bool> openLocationSetting() async {
    return await Geolocator.openLocationSettings();
  }

  //function request permision
  static Future<bool> showDialogLocationPermission(BuildContext context) async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        DialogHelper.showSnackbar(
          context: context,
          text: "Perizinan lokasi ditolak",
        );
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      Geolocator.openAppSettings();
      return false;
    }

    return true;
  }

  //untuk mengecek apakah lokasi user berada dalam radius
  /*static*/
  bool isLocationoInCircle(CircleOSM circle, GeoPoint currentLocation) {
    double distance = Geolocator.distanceBetween(
      currentLocation.latitude,
      currentLocation.longitude,
      circle.centerPoint.latitude,
      circle.centerPoint.longitude,
    );
    return distance <= circle.radius;
  }
}
