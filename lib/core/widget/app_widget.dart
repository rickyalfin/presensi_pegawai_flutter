import 'package:flutter/material.dart';
import 'package:presensi_pegawai_flutter/core/di/dependency.dart';
import 'package:presensi_pegawai_flutter/core/helper/dialog_helper.dart';
import 'package:presensi_pegawai_flutter/core/provider/app_provider.dart';
import 'package:presensi_pegawai_flutter/core/widget/error_app_widget.dart';
import 'package:presensi_pegawai_flutter/core/widget/loading_app_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';

abstract class AppWidget<T extends AppProvider, P1, P2>
    extends StatelessWidget {
  AppWidget({Key? key, this.param1, this.param2}) : super(key: key);

  late T notifier;
  final P1? param1;
  final P2? param2;
  FilledButton? _alternatifErrorButton;

  set alternatifErrorButton(FilledButton param) =>
      _alternatifErrorButton = param;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (context) => sl(param1: param1, param2: param2),
      builder: (context, child) => _build(context),
    );
  }

  Widget _build(BuildContext context) {
    notifier = Provider.of<T>(context);
    checkVariableBeforeUi(context);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (notifier.snackbarMessage.isEmpty) {
        DialogHelper.showSnackbar(
          context: context,
          text: notifier.snackbarMessage,
        );
        notifier.snackbarMessage = "";
      }

      checkVariableAfterUi(context);
    });

    return Scaffold(
      appBar: _appBarBuild(context),
      body: (notifier.isLoading)
          ? LoadingAppWidget()
          : (notifier.errorMessage.isNotEmpty)
          ? ErrorAppWidget(
              description: notifier.errorMessage,
              onPressDefaultButton: () {
                notifier.init();
                notifier.errorMessage = '';
              },
              alternatifButton: _alternatifErrorButton,
            )
          : _bodyBuild(context),
    );
  }

  void checkVariableBeforeUi(BuildContext context);
  void checkVariableAfterUi(BuildContext context);
  AppBar? _appBarBuild(BuildContext context) => null;
  Widget _bodyBuild(BuildContext context);
}
