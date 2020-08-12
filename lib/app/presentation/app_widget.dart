import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_mobx_store.dart';

class AppWidget extends StatelessWidget {
  final controller = Modular.get<AppMobxStore>();
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Visibility(
        visible: controller.theme != null,
        replacement: Center(child: CircularProgressIndicator(),),
        child: MaterialApp(
          title: 'Flutter Themes',
          theme: controller.theme,
          debugShowCheckedModeBanner: false,
          navigatorKey: Modular.navigatorKey,
          onGenerateRoute: Modular.generateRoute,
          initialRoute: '/',
        ),
      );
    });
  }
}
