import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:themed_application/app/stores/change_theme.dart';

class AppWidget extends StatelessWidget {
  final controllerChangeTheme = Modular.get<ChangeTheme>();
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return MaterialApp(
        title: 'Flutter Themes',
        theme: controllerChangeTheme.theme,
        debugShowCheckedModeBanner: false,
        navigatorKey: Modular.navigatorKey,
        onGenerateRoute: Modular.generateRoute,
        initialRoute: '/',
      );
    });
  }
}
