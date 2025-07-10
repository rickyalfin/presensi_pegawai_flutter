import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:presensi_pegawai_flutter/app/presentation/login/login_screen.dart';
import 'package:presensi_pegawai_flutter/core/di/dependency.dart';
import 'package:presensi_pegawai_flutter/core/widget/error_app_widget.dart';
import 'package:presensi_pegawai_flutter/core/widget/loading_app_widget.dart';

void main() async {
  await initializeDateFormatting('id', null);
  await initDependency();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.red),
      home: Scaffold(body: LoginScreen()),
    );
  }
}
