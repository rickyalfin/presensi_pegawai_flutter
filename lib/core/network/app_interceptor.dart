// file interceptor beguna untuk menghandle Request dan merespon API
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:presensi_pegawai_flutter/core/constant/constant.dart';
import 'package:presensi_pegawai_flutter/core/helper/shared_peferences_helper.dart';

class AppInterceptor extends Interceptor {
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['accept'] = 'application/json';
    final authToken = await SharedPreferencesHelper.getString(PREF_AUTH);
    if (authToken?.isNotEmpty ?? false) {
      options.headers['Authorization'] = authToken;
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode != HttpStatus.ok) {
      return handler.resolve(
        Response(data: response.data, requestOptions: response.requestOptions),
      );
    }
    super.onResponse(response, handler);
  }
}
