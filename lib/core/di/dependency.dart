import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:presensi_pegawai_flutter/app/data/repository/attendance_repository.dart';
import 'package:presensi_pegawai_flutter/app/data/repository/auth_repository.dart';
import 'package:presensi_pegawai_flutter/app/data/repository/schedule_repository.dart';
import 'package:presensi_pegawai_flutter/app/data/source/attendance_api_service.dart';
import 'package:presensi_pegawai_flutter/app/data/source/auth_api_service.dart';
import 'package:presensi_pegawai_flutter/app/data/source/schedule_api_service.dart';
import 'package:presensi_pegawai_flutter/app/module/repository/attendance_repository.dart';
import 'package:presensi_pegawai_flutter/app/module/repository/auth_repository.dart';
import 'package:presensi_pegawai_flutter/app/module/repository/schedule_repository.dart';
import 'package:presensi_pegawai_flutter/app/module/use_case/attendance_get_this_month.dart';
import 'package:presensi_pegawai_flutter/app/module/use_case/attendance_get_today.dart';
import 'package:presensi_pegawai_flutter/app/module/use_case/auth_login.dart';
import 'package:presensi_pegawai_flutter/app/module/use_case/schedule_get.dart';
import 'package:presensi_pegawai_flutter/app/presentation/home/home_notifier.dart';
import 'package:presensi_pegawai_flutter/app/presentation/login/login_notifier.dart';
import 'package:presensi_pegawai_flutter/app/presentation/map/map_notifier.dart';
import 'package:presensi_pegawai_flutter/core/network/app_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final sl = GetIt.instance;

Future<void> initDependency() async {
  //dio
  Dio dio = Dio();
  dio.interceptors.add(AppInterceptor());
  dio.interceptors.add(
    PrettyDioLogger(
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
      compact: true,
    ),
  );
  sl.registerSingleton<Dio>(dio);

  //apiservice
  sl.registerSingleton<AuthApiService>(AuthApiService(sl()));
  sl.registerSingleton<AttendanceApiService>(AttendanceApiService(sl()));
  sl.registerSingleton<ScheduleApiService>(ScheduleApiService(sl()));

  //repository
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl(sl()));
  sl.registerSingleton<AttendanceRepository>(AttendanceRepositoryImpl(sl()));
  sl.registerSingleton<ScheduleRepository>(ScheduleRepositoryImpl(sl()));

  //usecase
  sl.registerSingleton<AuthLoginUseCase>(AuthLoginUseCase(sl()));
  sl.registerSingleton<AttendanceGetTodayUseCase>(
    AttendanceGetTodayUseCase(sl()),
  );
  sl.registerSingleton<AttendanceGetMonthUseCase>(
    AttendanceGetMonthUseCase(sl()),
  );
  sl.registerSingleton<ScheduleGetUseCase>(ScheduleGetUseCase(sl()));

  //provider
  sl.registerFactoryParam<LoginNotifier, void, void>(
    (param1, param2) => LoginNotifier(sl()),
  );

  sl.registerFactoryParam<HomeNotifier, void, void>(
    (param1, param2) => HomeNotifier(sl(), sl(), sl()),
  );

  sl.registerFactoryParam<MapNotifier, void, void>(
    (param1, param2) => MapNotifier(sl()),
  );
}
