import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:presensi_pegawai_flutter/app/presentation/home/home_notifier.dart';
import 'package:presensi_pegawai_flutter/core/helper/global_helper.dart';
import 'package:presensi_pegawai_flutter/core/widget/app_widget.dart';

class HomeScreen extends AppWidget<HomeNotifier, void, void> {
  @override
  Widget bodyBuild(BuildContext context) {
    // Widget SafeArea digunakan untuk mengamankan tampilan konten supaya isi konten tidak bertabrakan dengan notifikasi di mobile
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Icon(Icons.person, size: 40),
                backgroundColor: GlobalHelper.getColorSchema(
                  context,
                ).primaryContainer,
                radius: 30,
              ),

              SizedBox(width: 10),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nama Pegawai',
                      style: GlobalHelper.getTextStyle(
                        context,
                        appTextStyle: AppTextStyle.HEADLINE_SMALL,
                      ),
                    ),

                    SizedBox(height: 5),

                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.location_city),
                              SizedBox(width: 5),
                              Text('Kantor'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.access_time),
                              SizedBox(width: 5),
                              Text('Siang'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(width: 10),

              IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void checkVariableAfterUi(BuildContext context) {
    // TODO: implement checkVariableAfterUi
  }

  @override
  void checkVariableBeforeUi(BuildContext context) {
    // TODO: implement checkVariableBeforeUi
  }
}
