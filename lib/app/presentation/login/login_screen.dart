import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:presensi_pegawai_flutter/app/presentation/home/home_screen.dart';
import 'package:presensi_pegawai_flutter/app/presentation/login/login_notifier.dart';
import 'package:presensi_pegawai_flutter/core/helper/global_helper.dart';
import 'package:presensi_pegawai_flutter/core/widget/app_widget.dart';

class LoginScreen extends AppWidget<LoginNotifier, void, void> {
  @override
  void checkVariableAfterUi(BuildContext context) {
    if (notifier.isLoged) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    }
  }

  @override
  Widget bodyBuild(BuildContext context) {
    // Widget SafeArea digunakan untuk mengamankan tampilan konten supaya isi konten tidak bertabrakan dengan notifikasi di mobile
    return SafeArea(
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Widget Expanded digunakan mengambil ruang pada tampilan
            Expanded(
              child: Center(
                child: Text(
                  'Presensi Pegawai',
                  style: GlobalHelper.getTextStyle(
                    context,
                    appTextStyle: AppTextStyle.DISPLAY_MEDIUM,
                  )?.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            SizedBox(height: 20),

            TextField(
              controller: notifier.emailController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                label: Text('Email'),
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 10),

            TextField(
              controller: notifier.passwordController,
              obscureText: !notifier.isShowPassword,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                label: Text('Password'),
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: _showHidePassword,
                  icon: Icon(
                    (notifier.isShowPassword)
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            Container(
              width: double.maxFinite,
              child: FilledButton(
                onPressed: () => _onPressLogin(context),
                child: Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showHidePassword() {
    notifier.isShowPassword = !notifier.isShowPassword;
  }

  _onPressLogin(BuildContext context) {
    notifier.login();
  }

  @override
  void checkVariableBeforeUi(BuildContext context) {
    // TODO: implement checkVariableBeforeUi
  }
}
